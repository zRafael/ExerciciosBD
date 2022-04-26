create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id int primary key auto_increment,
nome varchar(35) not null,
xp int not null
);

create table tb_personagens (
id int primary key auto_increment,
nome varchar(35) not null, 
forca int not null,
agilidade int not null,
inteligencia int not null,
classe_id int,
foreign key (classe_id) references tb_classe (id)
);

insert into tb_classe (nome, xp) values ("Guerreiro", 2000),
                                        ("Arqueiro", 3000),
                                        ("Mago", 4000),
                                        ("Ninja", 5000),
                                        ("Curandeiro", 2000);
                                        
insert into tb_personagens (nome, forca, agilidade, inteligencia, classe_id) values ("Rafael", 10, 7, 2, 1),
	                                                                                ("Gabriel", 6, 9, 9, 2),
                                                                                    ("Natanael", 4, 8, 10, 3),
                                                                                    ("Naruto", 8, 8, 8, 4),
                                                                                    ("Melissa", 2, 4, 10, 5),
                                                                                    ("João", 10, 7, 2, 1),
	                                                                                ("Davi", 6, 9, 9, 2),
                                                                                    ("Thiago", 4, 8, 10, 3);
                                                                                    
select * from tb_personagens where forca > 2000;
select * from tb_personagens where agilidade > 1000 and agilidade < 2000;
select * from tb_personagens where nome like "%c%";
select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;
select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where classe_id = 2;

