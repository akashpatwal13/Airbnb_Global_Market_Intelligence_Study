/* TASK: Standardize the License column.
Logic: Replace any empty (NULL) or blank cells with 'Unverified' 
to ensure cleaner grouping in visualizations.
*/

UPDATE airbnb_top_cities
SET license = 'Unverified'
WHERE license IS NULL 
   OR license = '';

