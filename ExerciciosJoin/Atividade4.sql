create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

create table tb_categoria (
id bigint primary key auto_increment,
tipo varchar(35) not null
);

create table tb_produto (
id bigint primary key auto_increment,
nome varchar(35) not null,
preco decimal not null,
qtdEstoque bigint not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo) values ("Frutas"), ("Vegetais"), ("Legumes");

insert into tb_produto (nome, preco, qtdEstoque, categoria_id) 
values ("Maça", 4.00, 100, 1),
       ("Banana", 3.00, 300, 1),
       ("Pera", 6.00, 400, 1),
       ("Alface", 4.00, 500, 2),
       ("Acelga-Japonesa", 7.00, 100, 2),
       ("Brócolis", 5.00, 100, 2),
       ("Abóbora", 8.00, 200, 3),
       ("Cenoura", 5.00, 500, 3);
       
select * from tb_produto where preco > 50;
select * from tb_produto where preco >= 50 and preco <= 150;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id where tipo = "Frutas";
       