-- **PROCEDURES**

-- 1)
-- drop procedure if exists pastFiftyDayAverageOfStock;
-- delimiter //
-- create procedure pastFiftyDayAverageOfStock(IN id_of_stock int, out price_avg decimal(15,2))
-- 	begin
-- 		select avg(price_close) into price_avg from stock_price
--         where stock_id=id_of_stock limit 50;
--     end; //

-- delimiter ;

-- call pastFiftyDayAverageOfStock(3, @result);
-- select @result as avg_price;

-- 2)
-- drop procedure if exists allStocksOfATrader;

-- delimiter //
-- create procedure allStocksOfATrader(IN trader_id int)
-- 	begin
-- 		select concat(t.first_name, t.last_name), s.stock_name, ps.date_of_purchase from portfolio_stock as ps
--         join stock as s
--         on ps.stock_id = s.id
--         join portfolio as p
--         on ps.portfolio_id = p.id
--         join trader as t
--         on p.trader_id = t.id
--         where t.id = trader_id;
-- 	end; //
-- delimiter ;

-- call allStocksOfATrader(4);


-- 3)
-- drop procedure if exists amountTradedInADay;
-- delimiter //
-- create procedure amountTradedInADay(IN input_date DATE, OUT amount decimal(15,2))
-- 	begin
-- 		select sum(os.price_placed*os.quantity) into amount
--         from `order` as o
--         join order_stock as os
--         on o.id = os.order_id
--         where cast(o.date_of_order as date) = input_date;
--     end; //
-- delimiter ;

-- call amountTradedInADay('2023-04-28', @total_amount);
-- select @total_amount as amount_traded_on_2023_04_28;


-- 4)
-- drop procedure if exists stocksOfAParticularType;
-- delimiter //
-- create procedure stocksOfAParticularType(IN stock_category_name varchar(45))
-- 	begin
-- 		select sc.stock_category_name, s.stock_name, s.date_of_listing, s.quantity, s.price_on_listing from stock_category as sc
--         join stock as s
--         on sc.id = s.stock_category_id
--         where sc.stock_category_name = stock_category_name;
--     end; //
-- delimiter ;

-- call stocksOfAParticularType('technology');

-- select * from `order` as o
-- join order_stock as os
-- on o.id = os.order_id;
-- where cast(o.date_of_order as date) = '2023-01-25';