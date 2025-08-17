-- 1. Find the app with an ID of 1880
SELECT * FROM analytics WHERE id = 1880;

-- 2. Find ID and app name for all apps last updated on Aug 01, 2018
SELECT id, app FROM analytics WHERE last_updated = '2018-08-01';

-- 3. Count the number of apps in each category
SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- 4. Top 5 most-reviewed apps
SELECT app, reviews FROM analytics
ORDER BY reviews DESC
LIMIT 5;

-- 5. App with most reviews AND rating >= 4.8
SELECT app, reviews, rating FROM analytics
WHERE rating >= 4.8
ORDER BY reviews DESC
LIMIT 1;

-- 6. Average rating per category (highest to lowest)
SELECT category, AVG(rating) AS avg_rating
FROM analytics
GROUP BY category
ORDER BY avg_rating DESC;

-- 7. Most expensive app with rating < 3
SELECT app, price, rating FROM analytics
WHERE rating < 3
ORDER BY price DESC
LIMIT 1;

-- 8. Apps with min_installs <= 50, that have a rating
SELECT app, rating FROM analytics
WHERE min_installs <= 50 AND rating IS NOT NULL
ORDER BY rating DESC;

-- 9. Apps rated < 3 with at least 10000 reviews
SELECT app FROM analytics
WHERE rating < 3 AND reviews >= 10000;

-- 10. Top 10 most-reviewed apps costing between $0.10 and $1.00
SELECT app, reviews, price FROM analytics
WHERE price BETWEEN 0.10 AND 1.00
ORDER BY reviews DESC
LIMIT 10;

-- 11. Most out-of-date app
SELECT app, last_updated FROM analytics
ORDER BY last_updated ASC
LIMIT 1;

-- 12. Most expensive app
SELECT app, price FROM analytics
ORDER BY price DESC
LIMIT 1;

-- 13. Count all reviews
SELECT SUM(reviews) AS total_reviews FROM analytics;

-- 14. Categories with more than 300 apps
SELECT category, COUNT(*) FROM analytics
GROUP BY category
HAVING COUNT(*) > 300;

-- 15. App with highest proportion of min_installs to reviews (at least 100,000 installs)
SELECT app, reviews, min_installs,
       (min_installs::float / reviews) AS proportion
FROM analytics
WHERE min_installs >= 100000 AND reviews > 0
ORDER BY proportion DESC
LIMIT 1;
