/* FILE: 04_regulatory_audit.sql
Goal: Measuring the licensing gap per city.
*/
SELECT 
    "city",
    SUM(CASE WHEN "license" IS NOT NULL AND "license" != '' AND "license" != 'Unverified' THEN 1 ELSE 0 END) AS licensed_count,
    SUM(CASE WHEN "license" IS NULL OR "license" = '' OR "license" = 'Unverified' THEN 1 ELSE 0 END) AS unverified_count
FROM "airbnb_top_cities"
GROUP BY 1;