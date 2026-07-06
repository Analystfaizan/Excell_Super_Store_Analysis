CREATE DATABASE super_Store;
USE Super_Store;
SELECT COUNT(*) AS Total FROM Row_Store;
SELECT * FROM row_Store 
LIMIT 10;

CREATE TABLE Store 
AS 
SELECT 
Row_id ,
order_id,
Order_date,
Ship_date,
Customer_id,
Customer_name,
Region,
category,
Sub_category,
Sales,
Profit
FROM Row_Store;

SELECT *FROM store
limit 10;

SELECT COUNT(*) FROM (SELECT 
Order_id,
COUNT(*) AS Duplicate_record 
FROM Store 
GROUP BY Order_id 
HAVING COUNT(*) > 1) t;

SELECT MIN(Order_id) AS uniq_records 
FROM Store 
GROUP BY Order_id 
LIMIT 10;

DELETE FROM Store 
WHERE Row_id NOT IN (
	SELECT * FROM (
		SELECT MIN(row_id) 
        FROM Store 
        GROUP BY Order_id
        ) AS t 
);

SELECT COUNT(*) FROM Store;

SELECT * FROM store 
WHERE Order_id IS NULL
OR Row_id IS NULL  
OR Customer_id IS NULL 
OR customer_name IS NULL 
OR category IS NULL 
OR Sub_category IS NULL 
OR Region IS NULL;


DESCRIBE Store;
SELECT VERSION();

SELECT * FROM STORE 
LIMIT 10;


SELECT DATE_FORMAT(STR_TO_DATE(`Order_date`,'%m/%d/%Y'),'%d-%m-%Y') AS Clean_Order_date 
FROM Store; 

SELECT 
CASE 
	WHEN `Order_date` REGEXP'^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$'
    THEN DATE_FORMAT(STR_TO_DATE(`Order_date`,'%m/%d/%Y'),'%Y-%m-%d') 
    WHEN `Order_date` REGEXP'^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$'
    THEN DATE_FORMAT(STR_TO_DATE(`Order_date`,'%d-%m-%Y'),'%Y-%m-%d') 
    ELSE `order_date`
    END AS `new_Order_date`
FROM Store 
LIMIT 10;

SELECT * FROM Store
LIMIT 10;

UPDATE Store 
SET `Order_date`= 
	CASE
		WHEN `Order_date` REGEXP'^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$'
		THEN DATE_FORMAT(STR_TO_DATE(`Order_date`,'%m/%d/%Y'),'%d-%m-%Y') 
        WHEN `Order_date` REGEXP'^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$'
		THEN DATE_FORMAT(STR_TO_DATE(`Order_date`,'%d-%m-%Y'),'%d-%m-%Y') 
        ELSE `Order_date`
        END;

ALTER TABLE Store 
MODIFY COLUMN `Order_date` DATE;

SELECT Order_date 
FROM Store
WHERE `Order_date` REGEXP '^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$';

SELECT `Order_date` , 
		STR_TO_DATE(`Order_date`,'%d-%m-%Y') AS Converted_date 
FROM Store 
LIMIT 10;

UPDATE Store 
SET `Order_date`= STR_TO_DATE(`order_date`,'%d-%m-%Y') ;

SELECT `ship_date` 
FROM Store 
LIMIT 10;

SELECT DATE_FORMAT(STR_TO_DATE(`Ship_date`,'%m/%d/%Y'),'%d-%m-%Y') AS Ship_date 
FROM Store 
LIMIT 10;

UPDATE Store 
SET `Ship_date` = 
CASE 
	 WHEN `ship_date` REGEXP'^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$' 
     THEN DATE_FORMAT(STR_TO_DATE(`ship_date`,'%m/%d/%Y'),'%d-%m-%Y')
	 WHEN `ship_date` REGEXP'^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$' 
     THEN DATE_FORMAT(STR_TO_DATE(`ship_date`,'%d-%m-%Y'),'%d-%m-%Y')
     ELSE `Ship_date` 
     END ;
     
SELECT `Ship_date` 
FROM Store 
LIMIT 10;

SELECT STR_TO_DATE(`Ship_date`,'%d-%m-%Y') 
FROM Store 
LIMIT 10;

UPDATE Store 
SET `Ship_date`=  STR_TO_DATE(`ship_date`,'%d-%m-%Y');

ALTER TABLE Store 
MODIFY COLUMN `Ship_date` DATE;

SELECT Order_id,REGEXP_REPLACE(`Order_id`,'[^A-Za-z0-9]','') AS clean_text
FROM Store;

UPDATE Store 
SET `Order_id`= REGEXP_REPLACE(`Order_id`,'[^A-Za-z0-9]',''),
	`Customer_id`=REGEXP_REPLACE(`Customer_id`,'[^A-Za-z0-9]',''),
    `Customer_name` = REGEXP_REPLACE(`Customer_name`,'[^A-Za-z0-9]',''),
    `Region`=REGEXP_REPLACE(`Region`,'[^A-Za-z0-9]',''),
    `category`=REGEXP_REPLACE(`category`,'[^A-Za-z0-9]',''),
    `Sub_category`=REGEXP_REPLACE(`Sub_category`,'[^A-Za-z0-9]','');
SELECT * FROM Store ;

UPDATE Store
SET `Order_id`= UPPER(TRIM(`Order_id`)),
	`Customer_id`=UPPER(TRIM(`Customer_id`)),
	`Customer_name`=TRIM(`Customer_name`),
    `Region`=UPPER(TRIM(`region`)),
    `Category`=LOWER(TRIM(`category`)),
    `Sub_category`=LOWER(TRIM(`Sub_Category`));
    
SELECT `sales`, ROUND(`Sales`) AS Round_sales ,
	`Profit`,ROUND(`profit`) AS Round_Profit 
FROM Store
LIMIT 10;

UPDATE Store 
SET `sales`=ROUND(`Sales`),
	`Profit`=ROUND(`profit`);
    
    

ALTER TABLE Store 
MODIFY COLUMN `sales` INT;
ALTER TABLE Store 
MODIFY COLUMN `Profit` INT;

SELECT COUNT(*) AS Total 
FROM Store;

SELECT * 
FROM Store;

CREATE TABLE Store_1 AS SELECT * FROM Store;
DROP TABLE Store;
SELECT * FROM Store
LIMIT 10;
ALTER TABLE Store_1 
RENAME TO Store;