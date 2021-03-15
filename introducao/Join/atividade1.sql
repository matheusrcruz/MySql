create database db_generation_game_online;

use db_generation_game_online;



create table tb_classes(
	id bigint auto_increment,
	poder bigint(5),
    defesa bigint(5),
	tipo varchar(30),
	raca varchar(10),
	descricao varchar(100),
	primary key(id)
);
create table tb_personagem(  
id bigint auto_increment,					
nome varchar(30) not null,		 	
idade bigint not null,		
sexo enum("F","M", "O") not null,					-- Forca digitacao exata	
conta boolean not null,					
fk_id bigint,
primary key (id),
foreign key (fk_id) references tb_classes(id) 			
);

-- classes
insert into tb_classes (poder,defesa, tipo, raca, descricao) values (1000,600, "Mage","Human","Mago do montes do tiber, são habilidosos com magia arcana");
insert into tb_classes (poder,defesa, tipo, raca, descricao) values (850, 500,"Healear","Elf","Curandeiro do das ilhas do Norte, restauram a energia e reparam armaduras" );
insert into tb_classes (poder,defesa, tipo, raca, descricao) values (2000,1890, "Paladin","Dwarf","Os Paladinos do leste são destemidos e otimos atacantes corpo a corpo" );
insert into tb_classes (poder,defesa, tipo, raca, descricao) values (3000,1800, "Necromancer","Mix","Necromante tem a habilidade de ressusitar os mortos e amaldiçoar os vivios" );
insert into tb_classes (poder,defesa, tipo, raca, descricao) values (4000,3250, "Mage","Human","Mago do montes do tiber, são habilidosos com magia arcana" );
insert into tb_classes (poder,defesa, tipo, raca, descricao) values (3050,2900, "Healear","Human","Curandeiro do das ilhas do Norte, restauram a energia e reparam armaduras" );
insert into tb_classes (poder,defesa, tipo, raca, descricao) values (2000,3000, "Paladin","Orc","Os Paladinos do leste são destemidos e otimos atacantes corpo a corpo" );
insert into tb_classes (poder,defesa, tipo, raca, descricao) values (100,200, "Necromancer","Elf","Necromante tem a habilidade de ressusitar os mortos e amaldiçoar os vivios" );
select * from tb_classes;


-- personagem
insert into tb_personagem (nome, idade, sexo, conta,fk_id) values ("Dongus", 100,"M", true, 1);
insert into tb_personagem(nome, idade, sexo, conta, fk_id) values ("Margaret", 200,"F", true, 2);
insert into tb_personagem(nome, idade, sexo, conta,fk_id) values ("Baltazar", 300,"M", true, 3);
insert into tb_personagem (nome, idade, sexo, conta, fk_id) values ("Nicolas", 100,"M", true, 4);
insert into tb_personagem(nome, idade, sexo, conta, fk_id) values ("Vora", 200,"F", true, 5);
insert into tb_personagem(nome, idade, sexo, conta, fk_id) values ("Lian", 300,"F", true, 6);
insert into tb_personagem(nome, idade, sexo, conta, fk_id) values ("Singed", 999,"M", true, 7);
select * from tb_personagem;





-- select retorno poder maior que 2000
select * from tb_classes where poder > 2000;

-- select retorno def entre 100 e 2000
select * from tb_classes
where defesa between  1000 and 2000;
-- select com like
select * from tb_personagem  where nome like "%B%";

select * from tb_classes;

-- Select com inner join  traz nome e tipo do personagem
select tb_classes.tipo,tb_personagem.nome from tb_classes
	inner join tb_personagem on tb_classes.id = tb_personagem.fk_id;


/*select colunas que quero from PRIMEIRAtabela inner join SEGUNDA 
tabela on primeiraTabela.id = segundaTabela.(O NOME Q VC DEU PRA SUA CHAVE ESTRANGEIRA)
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;*/





