CREATE DATABASE db_empresaRH;
USE db_empresaRH;

CREATE TABLE tb_colaboradores (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
salario DECIMAL(30,2) NOT NULL,
telefone VARCHAR(15) NOT NULL,
data_nascimento DATE
);

INSERT INTO tb_colaboradores VALUES (NULL, "Rafael de Campos", 2000.00, "11943557038", "2003-11-17"),
                                    (NULL, "Melissa Freire", 3000.00, "40028922", "2003-03-06"),
                                    (NULL, "Davi Nunes", 5000.00, "7002822", "2003-03-03"),
                                    (NULL, "João Almeida", 7999.99, "20023452", "2002-10-20"),
                                    (NULL, "Fábio Freire", 15000.79, "7882299", "1979-09-09");
                                    
SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 20000.00 WHERE id=1;
                                    
                                    