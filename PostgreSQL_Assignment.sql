
-- Table Creation

-- Creating Book Store Table With Values
CREATE TABLE book(
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    price INT CHECK(price >= 0),
    stock INT CHECK(stock >= 0),
    published_year DATE
)
-- Creating a Customer Table With Values

CREATE TABLE customer(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    joined_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)                       

-- Creating an Order Table With Values

CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customer(id),
    book_id INT REFERENCES book(id),
    quantity INT CHECK(quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

-- Sample Data Insertions

INSERT INTO book VALUES(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 20, 100, '1925-04-10'),
                         (2, '1984', 'George Orwell', 15, 75, '1949-06-01'),
                         (3, 'The Catcher in the Rye', 'J.D. Salinger', 18, 50, '1951-07-16'),
                         (4, 'To Kill a Mockingbird', 'Harper Lee', 15, 50, '1960-07-11');

INSERT INTO book VALUES(6, 'The Catcher', 'Salinger', 18, 0, '2016-07-16');
                        
INSERT INTO customer VALUES(1, 'John Doe', 'john.doe@example.com', '1960-01-01'),
                            (2, 'Jane Doe', 'jane.doe@example.com', '1961-06-16'),
                            (3, 'Alice Smith', 'alice.smith@example.com', '1970-05-20'),
                            (4, 'Bob Johnson', 'bob.john@example.com', '1980-04-15');
INSERT INTO customer VALUES(5, 'John Doe', 'john.doe@ex.com', '1960-01-01');                            
INSERT INTO orders VALUES(5, 1, 1, 2, '2022-01-01'),
                            (6, 2, 2, 1, '2022-01-02'),
                            (7, 3, 3, 3, '2022-01-03'),
                            (8, 4, 4, 1, '2022-01-04');


-- Queries

-- 1. Find the books that are out of stock
SELECT title FROM book WHERE stock = 0;

-- 2. Retrieve the most expensive book in the store

SELECT * from book
WHERE price = (SELECT MAX(price)FROM book)

-- 3. Find the total number of orders placed by each customer.

SELECT name, sum(quantity) as total_orders from orders
JOIN customer on orders.customer_id = customer.id
GROUP BY name
ORDER BY total_orders DESC;

-- 4. Calculate the total revenue generated from book sales

select sum(price*quantity) as total_revenue from orders
JOIN book on orders.book_id = book.id;

-- 5. List all customers who have placed more than one order.
SELECT name, sum(quantity) as total_orders from orders
JOIN customer on orders.customer_id = customer.id
GROUP BY name, quantity
  HAVING(sum(quantity)>1)
ORDER BY total_orders DESC;

-- 6️. Find the average price of books in the store.
SELECT avg(price) as avg_book_price from book;

-- 7️. Increase the price of all books published before 2000 by 10%.
UPDATE book
SET price = price * 1.1
WHERE published_year < '2000-01-01';

-- 8️. Delete customers who haven't placed any orders.

DELETE FROM customer
WHERE id NOT IN (SELECT customer_id FROM orders);


