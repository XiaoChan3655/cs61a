.read data.sql


CREATE TABLE average_prices AS
  SELECT category, SUM(MSRP)/COUNT(*) AS average_price FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) FROM inventory GROUP BY item;


CREATE TABLE item_buy AS
  SELECT name, MSRP FROM products GROUP BY category HAVING min(MSRP/rating);

CREATE TABLE shopping_list AS
  SELECT a.name, b.store
    FROM item_buy AS a, lowest_prices AS b WHERE a.name = b.item;


CREATE TABLE total_bandwidth AS
  SELECT SUM(b.Mbs)
    FROM shopping_list AS a, stores AS b WHERE a.store = b.store;

