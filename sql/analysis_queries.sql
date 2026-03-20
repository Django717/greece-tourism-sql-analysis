-- =========================================
-- Tourism Analysis Queries
-- =========================================

USE greece_tourism_portfolio;

-- 1. Total arrivals by country
SELECT 
    country,
    SUM(arrivals) AS total_arrivals
FROM tourism_stats
GROUP BY country
ORDER BY total_arrivals DESC;

-- 2. Total revenue by country
SELECT 
    country,
    SUM(revenue_million_eur) AS total_revenue
FROM tourism_stats
GROUP BY country
ORDER BY total_revenue DESC;

-- 3. Yearly tourism trend
SELECT 
    year,
    SUM(arrivals) AS total_arrivals,
    SUM(revenue_million_eur) AS total_revenue
FROM tourism_stats
GROUP BY year
ORDER BY year;

-- 4. Revenue per tourist
SELECT 
    country,
    SUM(revenue_million_eur) / SUM(arrivals) AS revenue_per_tourist
FROM tourism_stats
GROUP BY country
ORDER BY revenue_per_tourist DESC;

-- 5. Impact of COVID (2019 vs 2020)
SELECT 
    year,
    SUM(arrivals) AS total_arrivals
FROM tourism_stats
WHERE year IN (2019, 2020)
GROUP BY year;
