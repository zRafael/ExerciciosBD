create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categoria (
id bigint primary key auto_increment,
tipo varchar(35) not null
);

create table tb_curso (
id bigint primary key auto_increment,
nome varchar(35) not null,
preco decimal not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo) values ("Tecnologia"), ("Saúde"), ("Artes");

insert into tb_curso (nome, preco, categoria_id) 
values ("Analise de Desenvolvimento", 5000.00, 1),
       ("Ciência da Computação", 10000.00, 1),
       ("Sistema para Internet", 3000.00, 1),
       ("Biomedicina", 70000.00, 2),
       ("Odontologia", 7000.00, 2),
       ("Música", 90000.00, 3),
       ("Dança", 9000.00, 3),
       ("Design", 8000.00, 3);
       
       
select * from tb_curso where preco > 500;
select * from tb_curso where preco >= 600 and preco <= 1000;
select * from tb_curso where nome like "%j%";
select * from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_categoria.id;
select * from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_categoria.id where tipo = "Artes";