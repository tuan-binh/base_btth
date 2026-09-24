CREATE DATABASE shop_db;

CREATE TABLE products
(
    id             SERIAL PRIMARY KEY,
    name           VARCHAR(100)   NOT NULL,
    price          NUMERIC(15, 2) NOT NULL,
    stock_quantity INT            NOT NULL
);

CREATE OR REPLACE FUNCTION get_all_products()
    RETURNS SETOF products
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY
        SELECT * FROM products;
END;
$$;

SELECT *
FROM get_all_products();

CREATE OR REPLACE FUNCTION get_product_by_id(
    f_id INT
)
    RETURNS SETOF products
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY
        SELECT * FROM products WHERE id = f_id;
END;
$$;

SELECT *
FROM get_product_by_id(1);

CREATE OR REPLACE PROCEDURE proc_insert_data(
    IN p_name VARCHAR(255),
    IN p_price DECIMAL,
    IN p_stock_quantity INT
)
    LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO products (name, price, stock_quantity) VALUES (p_name, p_price, p_stock_quantity);
END;
$$;

CREATE OR REPLACE PROCEDURE proc_update_data(
    IN p_id INT,
    IN p_name VARCHAR,
    IN p_price DECIMAL,
    IN p_stock_quantity INT
)
    LANGUAGE plpgsql
AS
$$
BEGIN
    UPDATE products SET
                        name = p_name,
                        price = p_price,
                        stock_quantity = p_stock_quantity
    WHERE id = p_id;
END;
$$;

CREATE OR REPLACE PROCEDURE proc_delete_data(
    IN p_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
   DELETE FROM products WHERE id = p_id;
END;
$$
