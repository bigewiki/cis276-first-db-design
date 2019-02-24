-- ---
-- Inserting people
-- ---

INSERT INTO people (city,state,zip,firstname,lastname,is_customer,is_salesperson) VALUES
('Mesa','AZ',85202,'Phillip','Waclawski',1,0),
('Scottsdale','AZ',85054,'Sally','Struthers',1,1),
('Houston','TX',77005,'Joe','Schmoe',1,0),
('Scottsdale','AZ',85252,'John','Smith',1,1),
('Homer','AK',99603,'Doug','Waclawski',1,0),
(NULL,NULL,NULL,'Samantha','Jones',1,0),
('Traverse City','MI',NULL,'Randall','Waclawski',1,0),
(NULL,NULL,NULL,'Phil','Waclawski',0,1);

-- ---
-- Inserting products
-- ---

INSERT INTO products (prodname,prodprice) VALUES
("bass strings",12.95),
("Instrument cable/ft",2.95),
("Humidity Guage",15.85),
("guitar strings",10.75),
("Orange Crush 25w amp",259.00),
("Ibanez SR405 bass",399.00),
("Moog Synthesizer",3998.00),
("GoPro Black 4",495.00),
("Acoustic Foam",89.95),
("Bass Traps",125.00),
("Mackie Mixer",201.00),
("Guitar Picks",3.95),
("Chorus Pedal",99.00),
("Acer Desktop",1200.00),
("LG HD Monitor",300.00),
("Focusrite Scarlet 2i2",125.00),
("Focusrite Scarlet 2i4",179.00),
("MXR Carbon Copy",189.00),
("DBX 166XS Compressor",249.00);

-- ---
-- Inserting orders
-- ---

INSERT INTO orders (ordernum,customer_id,salesperson_id,orderdate) VALUES
("2300234","1","2","2016-05-17"),
("22985","3","4","2016-04-11"),
("335624","1","4","2016-06-27"),
("233345","2","2","2016-06-29"),
("352078","5","2","2016-04-21"),
("4455746","4","6","2016-07-11"),
("698541","7","8","2016-06-08");


-- ---
-- Inserting orders_products (join table)
-- ---

INSERT INTO orders_products (order_id,product_id,quantity) VALUES
("1","1","5"),
("1","2","12"),
("1","3","1"),
("2","4","6"),
("2","5","1"),
("3","6","1"),
("4","7","1"),
("5","8","2"),
("6","9","12"),
("6","10","8"),
("6","2","35"),
("7","11","1"),
("7","12","3"),
("7","13","1");

