CREATE DATABASE exam;
USE exam;

CREATE TABLE manufacturer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    contact_no VARCHAR(50)
);

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    price INT(5),
    manufacturer_id INT,
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturer(id)
    ON DELETE CASCADE
);

DELIMITER $$

CREATE PROCEDURE add_manufacturer(
    IN m_name VARCHAR(50),
    IN m_address VARCHAR(100),
    IN m_contact VARCHAR(50)
)
BEGIN
    INSERT INTO manufacturer(name, address, contact_no)
    VALUES (m_name, m_address, m_contact);
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER delete_product_after_manufacturer
AFTER DELETE ON manufacturer
FOR EACH ROW
BEGIN
    DELETE FROM product WHERE manufacturer_id = OLD.id;
END $$

DELIMITER ;

CREATE VIEW product_view AS
SELECT * FROM product WHERE price > 5000;