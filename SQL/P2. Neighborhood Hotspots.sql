/* FILE: 02_neighborhood_hotspots.sql
Goal: Identify areas with the highest density of listings.
*/
SELECT 
    "city",
    "neighbourhood",
    COUNT(*) AS total_listings
FROM "airbnb_top_cities"
GROUP BY "city", "neighbourhood"
ORDER BY 3 DESC
LIMIT 20;