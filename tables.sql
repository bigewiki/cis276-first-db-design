-- ---
-- Dropping tables to clear the way
-- ---

DROP TABLE IF EXISTS orders_products;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS products;

-- ---
-- Creating orders
-- ---

CREATE TABLE `orders` (
  `order_id` INTEGER UNSIGNED AUTO_INCREMENT,
  `ordernum` INTEGER UNSIGNED NULL DEFAULT NULL,
  `customer_id` INTEGER UNSIGNED NULL DEFAULT NULL,
  `salesperson_id` INTEGER UNSIGNED NULL DEFAULT NULL,
  `orderdate` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) engine=InnoDB CHARSET utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ---
-- Creating people
-- ---

CREATE TABLE `people` (
  `person_id` INTEGER UNSIGNED AUTO_INCREMENT,
  `city` VARCHAR(30) NULL DEFAULT NULL,
  `state` VARCHAR(2) NULL DEFAULT NULL,
  `zip` MEDIUMINT(5) NULL DEFAULT NULL,
  `firstname` VARCHAR(20) NULL DEFAULT NULL,
  `lastname` VARCHAR(30) NULL DEFAULT NULL,
  `is_customer` TINYINT NULL DEFAULT NULL,
  `is_salesperson` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) engine=InnoDB CHARSET utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ---
-- Creating products
-- ---

CREATE TABLE `products` (
  `product_id` INTEGER UNSIGNED AUTO_INCREMENT,
  `prodname` VARCHAR(30) UNIQUE NULL DEFAULT NULL,
  `proddesc` VARCHAR(255) NULL DEFAULT NULL,
  `prodprice` DECIMAL(8,2) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) engine=InnoDB CHARSET utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ---
-- Creating the join table
-- ---

CREATE TABLE `orders_products` (
  `order_id` INTEGER UNSIGNED,
  `product_id` INTEGER UNSIGNED,
  `quantity` INTEGER NULL DEFAULT NULL
) engine=InnoDB CHARSET utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- ---
-- Adding Foreign Keys
-- ---

ALTER TABLE `orders` ADD FOREIGN KEY (customer_id) REFERENCES `people` (`person_id`);
ALTER TABLE `orders` ADD FOREIGN KEY (salesperson_id) REFERENCES `people` (`person_id`);
ALTER TABLE `orders_products` ADD FOREIGN KEY (product_id) REFERENCES `products` (`product_id`);
ALTER TABLE `orders_products` ADD FOREIGN KEY (order_id) REFERENCES `orders` (`order_id`);
