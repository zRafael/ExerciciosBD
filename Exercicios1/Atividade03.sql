CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
nota DECIMAL(5,2) NOT NULL,
turma CHAR(3),
sexo CHAR(1) CHECK (sexo ='m' OR sexo ='f' OR sexo ='o')
);

INSERT INTO tb_estudantes VALUES (null, "Rafael de Campos", 9.99, 50, 'm'),
								 (null, "Melissa de Campos", 8.00, 50, 'f'),
                                 (null, "Gustavo Jorgina", 8.50, 49, 'o'),
                                 (null, "Davi Nunes", 5.50, 50, 'm'),
                                 (null, "João Barroso", 7.99, 49, 'm'),
                                 (null, "David Silva", 8.99, 49, 'm'),
                                 (null, "Júlia Pedrosa", 8.50, 50, 'f'),
                                 (null, "Ellie de Campos", 10.00, 49, 'f');
                                 
SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 10.00 WHERE id=4;
                                 
                                 
                                 