/* FILE: 03_demand_velocity.sql
Goal: Ranking categories by recent review activity (LTM).
*/
SELECT 
    "city",
    "room_type",
    ROUND(AVG("number_of_reviews_ltm"), 2) AS avg_recent_reviews
FROM "airbnb_top_cities"
GROUP BY 1, 2
ORDER BY 3 DESC;