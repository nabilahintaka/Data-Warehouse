-- Fact Table
SELECT
    o.order_id,
    u.id,
    p.id,
    d.id,
    o.num_of_item,
    p.retail_price,
FROM
    `bigquery-public-data.thelook_ecommerce.orders` as o INNER JOIN
    `bigquery-public-data.thelook_ecommerce.users` as u on o.order_id = u.id INNER JOIN
    `bigquery-public-data.thelook_ecommerce.products` as p on o.order_id = p.id INNER JOIN
    `bigquery-public-data.thelook_ecommerce.order_items` as i on o.order_id = i.id INNER JOIN
    `bigquery-public-data.thelook_ecommerce.distribution_centers` as d on o.order_id = d.id

-- Dim_Users
SELECT
    id,
    first_name,
    last_name,
    email,
    age,
    gender,
    state,
    city,
    country
FROM
    `bigquery-public-data.thelook_ecommerce.users`

-- Dim_Products
SELECT
    id,
    name,
    cost,
    category,
    brand,
    retail_price,
    department,
    sku
FROM
    `bigquery-public-data.thelook_ecommerce.products`

-- Dim_Order
SELECT
    order_id,
    status,
    created_at,
    returned_at,
    shipped_at,
    delivered_at,
    num_of_item
FROM
    `bigquery-public-data.thelook_ecommerce.orders`

-- Dim_Items
SELECT
    id,
    status,
    created_at,
    returned_at,
    shipped_at,
    delivered_at,
    num_of_item
FROM
    `bigquery-public-data.thelook_ecommerce.inventory_items`

-- Dim_Distribusi
SELECT
    id,
    distribution_center_geom,
    name,
    latitude,
    longitude,
FROM
    `bigquery-public-data.thelook_ecommerce.distribution_centers`