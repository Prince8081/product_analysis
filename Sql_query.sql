create database product_analysis ; 
use product_analysis;

select * from products;

       -- Total Products --
       
       
CREATE VIEW Total_products AS
    SELECT 
        COUNT(product) AS total_products
    FROM
        products;
        
        
SELECT * FROM Total_products;


    
    -- Average Sale Price & Discount --

CREATE VIEW avg_sales_and_discount AS
    SELECT 
        ROUND(AVG(sale_price), 2) AS avg_sales,
        ROUND(AVG(discount), 2) AS avg_discount
    FROM
        products;
        
SELECT * FROM avg_sales_and_discount;


    
   -- % of Products with Discount --
   
CREATE VIEW percent_products_with_discount AS
    SELECT 
        ROUND((COUNT(*) - SUM(CASE
                    WHEN discount = 0 THEN 1
                    ELSE 0
                END)) * 100 / COUNT(*),
                2) AS Percent_Products_with_Discount
    FROM
        products;
SELECT * FROM percent_products_with_discount;


    -- Missing Ratings % --

CREATE VIEW percent_missing_rating AS
    SELECT 
        ROUND(SUM(CASE
                    WHEN rating IS NULL THEN 1
                    ELSE 0
                END) * 100 / COUNT(*),
                2) AS percent_missing_rating
    FROM
        products;
        
SELECT * FROM percent_missing_rating;
    
    
      -- Category-Level Analysis --
      
CREATE VIEW Category_Analysis AS
    SELECT 
        category,
        COUNT(*) AS total_Products,
        ROUND(AVG(sale_price), 2) AS avg_sale_price,
        ROUND(AVG(discount), 2) AS avg_discount,
        ROUND(AVG(rating), 2) AS avg_rating
    FROM
        products
    GROUP BY 1
    ORDER BY 2 DESC;
SELECT * FROM Category_Analysis;


     -- Sub-Category Level (Top 10) --
     
CREATE VIEW Sub_Category_analysis AS
    SELECT 
        sub_category,
        COUNT(*) AS total_Products,
        ROUND(AVG(sale_price), 2) AS avg_sale_price,
        ROUND(AVG(discount), 2) AS avg_discount
    FROM
        products
    GROUP BY 1
    ORDER BY 2 DESC
    LIMIT 10;
SELECT * FROM Sub_Category_analysis;


-- Top 10 Most Discounted Products --

CREATE VIEW Most_Discounted_Products AS
    SELECT 
        product, brand, category, sale_price, market_price, discount
    FROM
        products
    ORDER BY discount DESC
    LIMIT 10;
    
select * from Most_Discounted_Products;
    
    
 -- Top 10 Highest Rated Products --
 
CREATE VIEW Highest_Rated_Products AS
    SELECT 
        product, category, rating
    FROM
        products
    ORDER BY 3 DESC
    LIMIT 10;

SELECT * FROM Highest_Rated_Products;


   -- Brand Performance (Top 10 by Count) --
   
CREATE VIEW Brand_Performance AS
    SELECT 
        brand,
        COUNT(*) AS total_product,
        ROUND(AVG(sale_price), 2) AS avg_sale_price,
        ROUND(AVG(rating), 2) AS avg_rating
    FROM
        products
    GROUP BY 1
    ORDER BY 2 DESC
    LIMIT 10;
SELECT * FROM Brand_Performance;
   