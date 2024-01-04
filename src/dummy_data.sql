-- use trading_platform;
-- show tables;
-- describe trader;
-- insert into trader values(1, 'pulkit', 'prakash'), (2, 'himanshu','mal');
-- select * from trader;

-- describe company;
-- insert into company values(1, 'amazon', '2020-10-20'),
--   						  (2, 'meta', '2021-08-10');
-- insert into company values(3, 'walmart', '2021-02-10'),(4, 'costco', '2022-05-08');

-- select * from company;

-- describe stock_category;
--  insert into stock_category values(1, 'energy'), (2, 'transportation'), (3, 'retail'), (4, 'manufacturing'), (5, 'technology');
-- select * from stock_category;

-- describe stock;
-- insert into stock values(1, 'amazon_stock', 20, '2020-10-25', 1000, 5, 1),
--  						(2, 'meta_stock', 10, '2021-10-15', 2000, 5, 2);
-- insert into stock values(3, 'walmart_stock', 40, '2021-02-12', 10000, 3, 3),(4, 'costco_stock', 10, '2022-05-10', 10000, 3, 4);
-- select * from stock;

-- describe trader;
-- insert into trader values(1, 'John', 'Smith', 'john.smith@gmail.com', '1980-05-10', '25 main street', 'boston', 'MA', '02128'), (2, 'Sam', 'Daniel', 'sam.daniel@gmail.com', '1985-04-12', '108 david street', 'boston', 'MA', '02114');
-- insert into trader values(4, 'Jill', 'Parker', 'jill.parker@gmail.com', '1980-05-10', '25 main street', 'boston', 'MA', '02128'),(5, 'David', 'Gill', 'david.gill@gmail.com', '1980-05-10', '25 main street', 'boston', 'MA', '02128');
-- select * from trader;

-- describe portfolio;
-- insert into portfolio values(1, null, null, '2023-01-20', '2023-01-20', 1), (2, null, null, '2022-04-12', '2022-04-12', 2);
-- select * from portfolio;

-- describe `order`;
-- insert into `order` values (1, '2023-01-25', 'completed', 10000, 1, 2, 0), (2, '2022-04-15', 'completed', 50000, 2, 1, 0);
-- insert into `order` values (4, '2023-01-26', 'completed', 1000, 3, 2, 0), (5, '2023-04-27', 'completed', 5000, 4, 1, 0);
-- select * from `order`;

-- describe order_stock;
-- delete from order_stock where order_id <=2;
-- insert into order_stock values (1, 1, 40, null, null, 50, 'completed', 1, 1), (1, 2, 80, null, null, 100, 'completed', 1, 1);
-- insert into order_stock values (2, 2, 625, null, null, 80, 'completed', 1, 1);
-- insert into order_stock values (4, 3, 10, null, null, 50, 'completed', 1, 1),(4, 4, 25, null, null, 20, 'completed', 1, 1);
-- insert into order_stock values (5, 4, 10, null, null, 500, 'completed', 1, 1);
-- select * from order_stock;

-- select * from `order`
-- join order_stock
-- on `order`.id = order_stock.order_id;



-- describe stock_price;
-- insert into stock_price values (1, 80, 90, 60, 65, 80, '2022-04-15', 1000, 2), (2, 100, 102, 95, 90, 100, '2023-01-25', 1000, 2);
-- insert into stock_price values (3, 50, 55, 45, 45, 50, '2023-01-25', 100, 1);
-- insert into stock_price values (4, 55, 60, 45, 45, 55, '2023-04-28', 100, 3),(5, 40, 45, 35, 35, 40, '2023-04-28', 100, 4);
-- select * from stock_price;

-- describe portfolio_stock;
-- insert into portfolio_stock values(1, 1, 40, 50, '2023-01-25'),(1, 2, 80, 100, '2023-01-25'), (2, 2, 625, 80, '2022-04-15');
-- insert into portfolio_stock values(3, 3, 10, 50, '2023-01-26'),(3, 4, 25, 20, '2023-04-27'),(4, 4, 10, 500, '2023-04-27');
-- select * from portfolio_stock;

-- select * from stock_price;

-- **REMAINING INSERT QUERIES**
-- insert into trader_login values(1, 'abcd', 'abcd@1234', 1), (2, 'hello', 'hello@1234', 2);
-- insert into department values(1, 'sales'),(2, 'product');
-- describe employee;
-- insert into employee values(1, 'joe', 'parker', 2, 'joe@gmail.com', '1986-08-12', '2020-10-01', '12 green park road', 'boston', 'MA', '02126');
-- insert into employee_login values(1, 'joe', 'joe@1234', 1);