-- **VIEWS**

-- 1)
-- drop view if exists bestInvestmentStocks;
-- create view bestInvestmentStocks as
-- 	select stock_id, stock_name, max(price_high-price_on_listing) as return_on_investment from stock_price
-- 	join stock on stock_price.stock_id = stock.id
--     group by stock_id
-- 	order by return_on_investment DESC;

-- select * from bestInvestmentStocks;

-- select * from order_stock as os
-- join `order` as o
-- on os.order_id = o.id;

-- 2)
-- drop view if exists mostTradedStocksToday;
-- create view mostTradedStocksToday as
-- 	select s.id, s.stock_name, sum(os.quantity) as total_quantity
-- 	from `order` as o
-- 	join order_stock as os
-- 	on o.id = os.order_id
--     join stock as s
--     on s.id = os.stock_id
-- 	where cast(o.date_of_order as date) = cast(now() as date)
--     group by os.stock_id
-- 	order by total_quantity DESC;

-- select * from mostTradedStocksToday;

-- select * from stock_price
-- join stock on
-- stock_price.stock_id = stock.id;