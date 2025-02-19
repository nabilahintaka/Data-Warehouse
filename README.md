# Data-Warehouse

This project is for create a data Warehouse design and sales business process for the company's analysis, the dataset comes from the Google BigQuery and extract it into csv using PySpark, transform the data and then load it to Database

This is a repository to showcase my data analytics skills and projects that i get during my studies using Google BigQuery. Python, PySpark, and PostgreSQL

# Objectives
demonstrate the ability to ETL and Data Modeling concepts as follows:
- Able to perform the Extract data process
- Able to perform the data transformation process with PySpark
- Able to design a data warehouse including its Fact and Dimension tables
- Able to create a data warehouse on PostgreSQL
- Able to store data into a data warehouse that has been created

---
# Cases
You work at an ecommerce company called 'The Look'. You are asked to create a Data Warehouse for the company's analysis needs related to sales.

#### A. Dataset
The dataset used comes from the Google BigQuery database "thelook_ecommerce" which can be accessed [here](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=thelook_ecommerce).


#### B. Data Modeling
1. Create a data warehouse design along with details of the fact table and dimension table.

2. Sales Business Process Details
   - User browses products on the platform
   - User adds products to the shopping cart
   - User checks out and places an order
   - System creates and records order details such as product, price and shipping information
   - Order is processed and prepared at the distribution center
   - Order is sent to User
   - Order is received by User

3. This data warehouse design uses a Star Schema. This scheme was chosen because of its simplicity and ease of performing analytical queries. The Fact_Sales fact table is in the middle, surrounded by directly connected dimension tables.
![Tambahkan sedikit teks isi](https://github.com/user-attachments/assets/237e94d2-f1c0-4d89-894f-f9185369eeef)
Each dimension table provides descriptive context for the sales data. For example, Dim_Customer provides information about who bought the product, Dim_Product provides information about what product was purchased, and so on.

#### C. Extract
1. Fetch the required data from BigQuery database based on Fact Table and Dimension Table and save it to .csv respectively query output
2. Put the query sql in a special .sql file and
3. Load the csv files to **PySpark dataframe**.

#### D. Transform
1. Perform data cleaning and transformation according to the Fact Table and Dimension Table using PySpark.
2. The cleaning and transform process can apply changing column names, changing data formats, checking and deleting missing values, adding or deleting columns, etc.
3. This transform process is carried out in the .ipynb notebook file. It is highly not recommended to run it on Google Colab because it will later be connected to the PostgreSQL database.

#### E. Load
1. Create a pre-designed data warehouse to a PostgreSQL database. Create a new Database and table based on the schema design you have created.
2. Save the DDL process sequence in one .sql file
3. Load the transformed PySpark data into each table (Fact and Dimension) that has been created.

