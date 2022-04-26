create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categoria (
id bigint primary key auto_increment,
tipo varchar(35) not null
);

create table tb_produtos (
id bigint primary key auto_increment,
nome varchar(35) not null,
preco decimal not null,
qtdEstoque bigint not null,
dataValidade date not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo) values ("Antibióticos"), ("Analgésicos"), ("Anti-inflamatórios");

insert into tb_produtos (nome, preco, qtdEstoque, dataValidade, categoria_id)
values ("Amoxicilina", 200.00, 100, "2002-10-10", 1),
       ("Azitromicina", 210.00, 150, "2022-11-10", 1),
       ("Ampicilina", 220.00, 200, "2024-11-10", 1),
       ("Dipirona", 10.00, 1000, "2025-04-20", 2),
       ("Paracetamol", 8.00, 1000, "2022-11-10", 2),
       ("Dexametasona", 50.00, 300, "2026-06-15", 3),
       ("Betametasona", 60.00, 600, "2024-03-01", 3),
       ("Nimesulida", 30.00, 1000, "2024-08-10", 3);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco >= 5 and preco <= 60;
select * from tb_produtos where nome like "%c%";
select * from tb_produtos inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id;
select * from tb_produtos inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id where tipo = "Antibióticos";

       