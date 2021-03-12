-- Criar um Banco de Dados;
create database db_ecommerce;

use db_ecommerce;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null unique,
idade int not null,
salario float not null,
funcao varchar(255) not null,
periodo varchar(255) not null,
primary key(id)
);

insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("Johnny",28,6500,"gerente","manha");
insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("Paula",22,3000,"lider de setor","manha");
insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("Jessica",40,3000,"selecionadora","manha");
insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("jonas",36,1800,"estoquista","tarde");
insert into tb_funcionarios (nome,idade,salario,funcao,periodo) values ("Patricia",23,2300,"empilhadora","manha");

select * from tb_funcionarios where salario < 2000;

select * from tb_funcionarios where salario > 2000;

update tb_funcionarios set nome = "jonas"
where id = 19;