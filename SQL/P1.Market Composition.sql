/* FILE: 01_market_composition.sql
Goal: Break down the professionalization of each city market.
*/
SELECT 
    "city",
    CASE 
        WHEN "calculated_host_listings_count" >= 2 THEN 'Commercial Host'
        ELSE 'Casual Host'
    END AS host_type,
    COUNT(*) AS listing_count,
    ROUND(AVG("price"), 2) AS avg_price
FROM "airbnb_top_cities"
GROUP BY 1, 2
ORDER BY 1 ASC, 3 DESC;