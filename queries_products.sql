-- 1. Add a product: chair
INSERT INTO products (name, price, can_be_returned)
VALUES ('chair', 44.00, FALSE);

-- 2. Add a product: stool
INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', 25.99, TRUE);

-- 3. Add a product: table
INSERT INTO products (name, price, can_be_returned)
VALUES ('table', 124.00, FALSE);

-- 4. Display all of the rows and columns in the table
SELECT * FROM products;

-- 5. Display all of the names of the products
SELECT name FROM products;

-- 6. Display all of the names and prices of the products
SELECT name, price FROM products;

-- 7. Add a new product (example: lamp)
INSERT INTO products (name, price, can_be_returned)
VALUES ('lamp', 18.50, TRUE);

-- 8. Display only the products that can be returned
SELECT * FROM products WHERE can_be_returned = TRUE;

-- 9. Display only the products that have a price less than 44.00
SELECT * FROM products WHERE price < 44.00;

-- 10. Display only the products that have a price in between 22.50 and 99.99
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- 11. Sale: everything is $20 off
UPDATE products
SET price = price - 20;

-- 12. Remove all products whose price is less than $25
DELETE FROM products
WHERE price < 25;

-- 13. Sale is over: increase remaining products’ prices by $20
UPDATE products
SET price = price + 20;

-- 14. New company policy: everything is returnable
UPDATE products
SET can_be_returned = TRUE;
