create database db_pizza_legal;
use db_pizza_legal;

create table tb_categoria (
id bigint primary key auto_increment,
tipo varchar(35) not null
);

create table tb_pizzas (
id bigint primary key auto_increment,
nome varchar(35) not null,
tamanho varchar(35) not null,
ingredientes varchar(35) not null, 
preco bigint not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo) values ("Doce"), ("Salgada"), ("Especiais"), ("Veganas"), ("Fit");

insert into tb_pizzas (nome, tamanho, ingredientes, preco, categoria_id) 
values ("Portuguesa", "Grande", "Ovo, cebola, queijo, tomate", 40, 2),
	   ("Portuguesa", "Pequena", "Ovo, cebola, queijo, tomate", 20, 2),
       ("Chocolate", "Grande", "Chocolate", 60, 1),
       ("Chocolate", "Pequena", "Chocolate", 30, 1),
       ("Modo Chefe 1", "Grande", "Ovo, cebola, queijo, wasabi", 65, 3),
       ("Modo Chefe 2", "Pequena", "Ovo, cebola, queijo, wasabi", 32, 3),
       ("Cogumelo Baiano", "Grande", "Cogumelos", 50, 4),
       ("Salada", "Pequena", "Alface", 20, 5);
       
select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco > 50.00 and preco < 100;
select * from tb_pizzas where nome like "%m%";
select * from tb_pizzas inner join tb_categoria on tb_categoria.id = tb_pizzas.categoria_id;
select * from tb_pizzas inner join tb_categoria on tb_categoria.id = tb_pizzas.categoria_id where tipo = "Doce";
