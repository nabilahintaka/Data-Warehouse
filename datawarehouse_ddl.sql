-- Membuat database
CREATE DATABASE datawarehouse_thelook;

-- Membuat tabel Dim_Users
CREATE TABLE Dim_Users (
    user_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    age INTEGER,
    gender VARCHAR(100),
    state VARCHAR(100),
	city VARCHAR(100),
	country VARCHAR(100)
);

-- Input tabel Dim_Users
COPY Dim_Users(user_id, first_name, last_name, email, age, gender, state, city, country)
FROM 'c:\tmp\Dim_Users.csv'
DELIMITER ','
CSV HEADER;

-- Membuat tabel Dim_Products
CREATE TABLE Dim_Products (
    products_id SERIAL PRIMARY KEY,
	products_name VARCHAR(255),
    cost NUMERIC,
    category VARCHAR(100),
    brand VARCHAR(100),
    retail_price NUMERIC,
	department VARCHAR(100),
	sku VARCHAR(100)
);

-- Input tabel Dim_Products
COPY Dim_Products(products_id, products_name, cost, category, brand, retail_price, department, sku)
FROM 'c:\tmp\Dim_Products.csv'
DELIMITER ','
CSV HEADER;

-- Membuat tabel Dim_Orders
CREATE TABLE Dim_Orders (
    order_id SERIAL PRIMARY KEY,
    status VARCHAR(100),
    created_at DATE,
    returned_at DATE,
    shipped_at DATE,
    delivered_at DATE,
	num_of_item INTEGER
);

-- Input tabel Dim_Orders
COPY Dim_Orders(order_id, status, created_at, returned_at, shipped_at, delivered_at, num_of_item)
FROM 'c:\tmp\Dim_Orders.csv'
DELIMITER ','
CSV HEADER;

-- Membuat tabel Dim_OrderItem waktu
CREATE TABLE Dim_OrderItem (
    OrderItem_id SERIAL PRIMARY KEY,
    status VARCHAR(100),
    created_at DATE,
    returned_at DATE,
    shipped_at DATE,
    delivered_at DATE
);

-- Input tabel Dim_OrderItem
COPY Dim_OrderItem(OrderItem_id, status, created_at, returned_at, shipped_at, delivered_at)
FROM 'c:\tmp\Dim_OrderItem.csv'
DELIMITER ','
CSV HEADER;

-- Membuat tabel Dim_Distribution
CREATE TABLE Dim_Distribution (
	distribution_id SERIAL PRIMARY KEY,
    distribution_center_geom VARCHAR(255),
    distribution_center_name VARCHAR(100),
    latitude VARCHAR(100),
    longitude VARCHAR(100)
);

-- Input tabel Dim_Distribution
COPY Dim_Distribution(distribution_id, distribution_center_geom, distribution_center_name, latitude, longitude)
FROM 'c:\tmp\Dim_Distribution.csv'
DELIMITER ','
CSV HEADER;

-- Membuat FactTable
CREATE TABLE FactTable (
    order_id INTEGER REFERENCES Dim_Orders(order_id),
    user_id INTEGER REFERENCES Dim_Users(user_id),
    products_id INTEGER REFERENCES Dim_Products(products_id),
    distribution_id INTEGER REFERENCES Dim_Distribution(distribution_id),
    num_of_item INTEGER,
	retail_price NUMERIC
);