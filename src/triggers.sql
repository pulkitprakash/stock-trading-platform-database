-- describe portfolio;
-- show triggers;
-- **TRIGGER**
-- 1)

-- drop trigger if exists CreatePortfolio;

-- DELIMITER //
-- create trigger CreatePortfolio
-- AFTER INSERT ON trader
-- for each row
-- BEGIN
-- 	INSERT into portfolio
--     (id, investment_amount, number_of_stocks, date_of_creation, date_of_last_update, trader_id)
--     values(new.id, null, null, cast(now() as date), cast(now() as date), new.id);
-- END; //
-- DELIMITER ;

-- 2)
-- drop trigger if exists UpdatePendingStocksCount;

-- DELIMITER //
-- create trigger UpdatePendingStocksCount
-- AFTER UPDATE ON order_stock
-- for each row
-- BEGIN
-- 	IF new.status = 'completed'
--     THEN
-- 		UPDATE `order` as o
--         SET o.pending_stocks_count = o.pending_stocks_count-1
--         WHERE o.id = new.order_id;
-- 	END IF;
-- END; //
-- DELIMITER ;

-- select * from trader;
-- select * from portfolio;
-- insert into trader values (6, 'abc', 'abcde', 'peter.smith@gmail.com', '1982-05-10', '25 main avenue', 'boston', 'MA', '02126');
-- insert into `order` values (6, '2023-04-28', 'active', 5000, 4, 1, 1);
-- insert into order_stock values (6, 4, 40, null, null, 125, 'active', 1, 1);

-- update order_stock set status = 'completed' where order_id = 6 and stock_id=4;
-- select * from order_stock;
-- select * from `order`;