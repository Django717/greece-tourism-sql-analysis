DROP DATABASE IF EXISTS greece_tourism_portfolio;
CREATE DATABASE greece_tourism_portfolio;
USE greece_tourism_portfolio;

CREATE TABLE tourism_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL,
    country VARCHAR(100) NOT NULL,
    region VARCHAR(100),
    arrivals INT DEFAULT 0,
    nights_spent INT DEFAULT 0,
    revenue_million_eur DECIMAL(12,2) DEFAULT 0.00,
    source VARCHAR(100)
);
