-- 1. List the magazine name and then take 3% off the magazine price and round to 2 decimal places
SELECT magazineName, ROUND(magazinePrice * 0.97, 2) AS discountedPrice
FROM magazines;
-- 2. Show the primary key of id from the subscriber table and the number of years since subscription started
SELECT subscriberKey, ROUND(DATEDIFF('2020-12-20', subscriptionStartDate) / 365) AS yearsSinceSubscription
FROM subscribers;
-- 3. Show the subscriptionStartDate, subscriptionLength, and the formatted end date
SELECT subscriptionStartDate, subscriptionLength, DATE_FORMAT(DATE_ADD(subscriptionStartDate, INTERVAL subscriptionLength MONTH), '%M %D, %Y') AS subscriptionEndDate
FROM subscriptions;
-- 4. List all products without the year at the end of the product_name string
SELECT product_id, 
       TRIM(REPLACE(REPLACE(REPLACE(product_name, ' 2020', ''), ' 2019', ''), ' 2018', '')) AS productNameWithoutYear
FROM products
ORDER BY product_id
LIMIT 14;
-- 5. List the product name and one of the three equal payments for 2019 model year bikes
SELECT product_name, 
       CONCAT('$', FORMAT(product_price / 3, 2, 'en_US')) AS oneOfThreePayments
FROM products
WHERE product_name LIKE '%2019';
