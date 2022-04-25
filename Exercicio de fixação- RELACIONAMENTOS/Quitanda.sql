create database db_quitanda;
use db_quitanda;

create table tb_produtos (
id bigint primary key auto_increment,
nome varchar(35) not null,
preco decimal(5,2) not null,
qtdProduto int not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Verduras",true),
												   ("Legumes",true),
                                                   ("Frutas",true);

insert into tb_produtos (nome, preco, qtdProduto, categoria_id) values ("Maça", 1.00, 100, 3),
																	   ("Abóbora", 7.00, 50, 2),
                                                                       ("Acelga-chinesa", 6.00, 150, 1),
                                                                       ("Banana", 4.00, 80, 3),
                                                                       ("Batata", 4.00, 100, 2);

select * from tb_produtos;
select * from tb_categoria;
select * from tb_categoria inner join tb_produtos on  tb_categoria.id = tb_produtos.categoria_id where tb_produtos.preco > 50;
select * from tb_produtos where nome like "%a%";

update tb_produtos set qtdProduto=50 where id=5;

