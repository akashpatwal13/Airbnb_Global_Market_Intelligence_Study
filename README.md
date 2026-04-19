
Project: Global Airbnb Market Audit & Regulatory Risk Assessment

A data-driven audit of the short-term rental (STR) landscape across five global hubs (London, Bangkok, Rome, Barcelona, and Amsterdam). This project translates raw listing data into actionable business intelligence, specifically focusing on market professionalization, geospatial density, and institutional regulatory risk.

While the associated [Strategic Executive Report](https://drive.google.com/file/d/1GBnCux8-K7lEmWtMUHgkv2JYN6Ccbgz1/view?usp=sharing) details the business implications, this document outlines the technical methodology and rigor used to derive those insights.

 
Technical Documentation
This repository contains a data science workflow designed to quantify market health and competitive threat. While the associated Strategic Executive Report details the business implications, this document outlines the technical methodology, cleaning rigor, and analytical framework used to derive those insights.

Technical Overview
The project utilizes a custom dataset of 292,000+ raw records. The primary objective was to move beyond descriptive listing counts into an analytical framework that identifies market saturation and regulatory exposure.
 
Data Pipeline and Engineering
Data Cleaning and Hard Pruning
Raw data often contains "noise" that can skew market averages. The following steps were taken to ensure data integrity:
(a) Competitive Filtering: Listings with prices below $10 or stay requirements exceeding 365 days (de facto residential leases) were removed to focus solely on the short-term travel market.

(b) Status Labelling: Missing license information was handled by categorizing nulls as "Unverified." This allows us to quantify regulatory risk as a binary metric (Verified vs. Unverified) rather than simply ignoring missing data.
 
Analytical Framework
The project applies a four-pillar framework to validate market assumptions and support strategic recommendations.
1. Market Composition (Professionalization)
Hosts were categorized into "Casual" (1 listing) and "Commercial" (2+ listings). This distinguishes between peer-to-peer sharing and decentralized hotel operations, providing a lens into the "Shadow Hotel" effect in major hubs.
2. Geospatial Concentration
Utilized listing counts by neighbourhood to identify "Hotspots." This methodology helps pinpoint areas where supply density creates localized infrastructure pressure and signals high-competition zones for traditional hospitality providers.
3. Demand Velocity (LTM Analysis)
To avoid properties that are listed but rarely booked, number_of_reviews_ltm (Last Twelve Months) was analysed. This acts as a proxy for occupancy, allowing us to distinguish between total volume and actual booking traction.


4. Regulatory Audit
Conducted a comparative risk assessment by calculating the ratio of licensed versus unverified inventory. This evaluates the compliance gap between mature, regulated markets (Amsterdam) and "Grey Markets" (London/Bangkok) prone to sudden supply shocks.
 
Repository Structure
1.	data/ contains the raw and processed datasets 
2.	SQL/ contains the SQL scripts used for data cleaning and imputation.
3.	strategic_executive_report/ contains the final PDF and Word executive reports with key business insights.
4.	Python code for visuals/ contains python code used to generate the visuals in the report
5.	.gitignore specifies the files and folders that are ignored by Git (e.g., large datasets, system files).
6.	README.md provides the project overview, methodology, and insights.
7.	requirements.txt lists the Python libraries required to run the analysis.
 
Environment and Dependencies
The project was developed in a Python 3.x environment. The following libraries are required to replicate the analysis:
(a) Data Manipulation: pandas, numpy

(b) Visualization: matplotlib, seaborn

(c) SQL Interface: sqlite3

To install all dependencies, execute:
pip install -r requirements.txt

(d) DB Browser for sqlite

