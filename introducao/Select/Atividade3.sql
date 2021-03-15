-- Criar um Banco de Dados;
create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
turma int not null,
nota int not null,
periodo varchar(255) not null,
primary key(id)
);

insert into tb_alunos(nome,idade,turma,nota,periodo) values ("Heitor", "2", "1", "8","tarde");
insert into tb_alunos(nome,idade,turma,nota,periodo) values ("Saymon", "5", "2", "10","manha");
insert into tb_alunos(nome,idade,turma,nota,periodo) values ("Steicy", "17", "4", "7","noite");
insert into tb_alunos(nome,idade,turma,nota,periodo) values ("Stanlley", "18", "4", "5","noite");
insert into tb_alunos(nome,idade,turma,nota,periodo) values ("Thauany", "9", "3", "9","manha");
insert into tb_alunos(nome,idade,turma,nota,periodo) values ("vinicios", "12", "3", "7","tarde");
insert into tb_alunos(nome,idade,turma,nota,periodo) values ("Marcos", "6", "2", "5","tarde");
insert into tb_alunos(nome,idade,turma,nota,periodo) values ("Jhenifer", "14", "3", "8","manha");

select * from tb_alunos where nota >7;
select * from tb_alunos where nota <7;