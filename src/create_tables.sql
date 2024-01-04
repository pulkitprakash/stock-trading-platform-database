-- create schema trading_platform;

create table trader_login(
LoginId			int,
TraderId		int,
Username		varchar(25),
Password		varchar(25));

create table trader(
TraderId		int,
FirstName		varchar(25),
LastName		varchar(25),
Email			varchar(50),
DateOfBirth		date,
Address			varchar(100),
City			varchar(25),
State			varchar(25),
Zipcode			int
);

create table employee_login(
LoginId			int,
EmployeeId		int,
Username		varchar(25),
Password		varchar(25));

create table employee(
EmployeeId			int,
FirstName		varchar(25),
LastName		varchar(25),
Email			varchar(50),
DepartmentId	integer,
DateOfBirth		date,
DateOfJoining	date,
Address			varchar(100),
City			varchar(25),
State			varchar(25),
Zipcode			int);

create table department(
DepartmentId	integer,
DpartmentName	varchar(50));

create table portfolio(
PortfolioId			integer,
UserId				integer,
DateOfCreation		date,
DateOfLastUpdate	date,
TotalInvestment		decimal(15,2),
NumberOfStocks		integer
);

create table portfolio_item(
PortfolioItemId		integer,
PortfolioId			integer,
StockId				integer,
Quantity			integer,
Price				decimal(15,2),
DateOfPurchase		date);

create table company(
CompanyId			integer,
CompanyName			varchar(25),
DateOfRegistration	date,
NumberOfStocks		integer);

create table stock(
StockId				integer,
CompanyId			integer,
StockName			varchar(25),
StockTypeId			integer,
PriceOfListing		decimal(15,2),
DateOfListing		date,
Quantity			integer
);

create table stock_type(
StockTypeId			integer,
StockTypeName		varchar(20)
);

create table stock_price(
StockPriceId		integer,
StockId				integer,
PriceCurrent		decimal(15,2),
PriceHigh		decimal(15,2),
PriceLow		decimal(15,2),
PriceOpen		decimal(15,2),
PriceClose		decimal(15,2),
DateOfTrade		date,
Quantity		integer
);

create table stock_order(
OrderId				integer,
UserId				integer,
DateOfOrder			date,
OrderStatus			ENUM('active', 'inactive', 'completed', 'failed'),
TotalAmount			integer,
IsPartialAllowed	boolean);

create table stock_order_item(
OrderItemId		integer,
OrderId			integer,
Quantity		integer,
PriceAsked		decimal(15,2),
Margin			decimal(15,2),
PricePlaced		decimal(15,2),
OrderItemStatus			ENUM('active', 'inactive', 'complete', 'failed'));