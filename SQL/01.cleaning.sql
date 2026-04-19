TASK: REMOVE NON-COMPETITIVE & INVALID DATA														
1. Remove listings with $0 or negative prices (likely errors).							
2. Remove listings requiring > 365 nights (residential leases/zombie accounts).							
================================================================================							
*/							
							
DELETE FROM airbnb_top_cities							
WHERE price <= 0 							
   OR price IS NULL							
   OR minimum_nights > 365;							
							
						