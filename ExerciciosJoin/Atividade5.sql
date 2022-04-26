create database db_construindo_vidas;
use db_construindo_vidas;

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

insert into tb_categoria (tipo) values ("Ferramentas"), ("Tintas"), ("Hidráulicos");

insert into tb_produto (nome, preco, qtdEstoque, categoria_id) 
values ("Colher de pedreiro", 10.00, 100, 1),
       ("Desempenadeira", 8.00, 300, 1),
       ("Pá quadrada", 100.00, 400, 1),
       ("Coral", 50.00, 500, 2),
       ("Suvenil", 100.00, 100, 2),
       ("Tubo de esgoto", 80.00, 100, 3),
       ("Caixa d'Água", 1000.00, 200, 3),
       ("Válvula redutora de pressão", 100.00, 500, 3);
       
       
select * from tb_produto where preco > 100;
select * from tb_produto where preco >= 70 and preco <= 150;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id where tipo = "Hidráulicos";