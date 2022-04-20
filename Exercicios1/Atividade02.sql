CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
qtd_estoque CHAR(45) NOT NULL,
categoria VARCHAR(45) NOT NULL
);

INSERT INTO tb_produtos VALUES (NULL, "Camisa", 200.00, 100, "Roupas"),
							   (NULL, "Tênis Nike", 1000.00, 50, "Tênis"),
                               (NULL, "Tênis Adidas", 900.00, 70, "Tênis"),
                               (NULL, "Meias Skateboard", 10, 300, "Meias"),
                               (NULL, "Caneca", 15, 350, "Casa"),
                               (NULL, "Notebook", 5000.00, 100, "Tecnologia"),
                               (NULL, "Televisão", 10000.00, 200, "Tecnologia"),
                               (NULL, "PS5", 5000.00, 500, "Tecnologia");
                               
                               
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco=20000.00 WHERE id=7;






							   