create database db_minha_casa_mais_bonita;

use db_minha_casa_mais_bonita;

create table tb_produto(
	id bigint auto_increment,
	nomes varchar(100) not null ,
	marcas varchar(100) not null,
	descricao varchar(255) not null,
	preco bigint not null,
	quantidade bigint not null,

primary key(id)
); 
create table tb_categoria(
	id bigint auto_increment,  		  	
	codigo_prod bigint not null,
	tipo enum("P","M" , "G") not null,
    entrega varchar(200)not null,
	primary key (id),
    fk_id bigint not null,
	foreign key (fk_id) references tb_produto(id)
 ); 
 /*Crie a tabela Usuario  e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_usuario para se trabalhar com o serviço desta loja.*/
 create table tb_usuario(
	id bigint auto_increment,
	nome varchar(30) not null,
    email varchar(100) not null,
    cpf bigint(11) not null,
    pagamento enum("Cartao", "Dinheiro"),
    primary key(id)
 );

 -- populando produto 8
 insert into tb_produto(nomes, marcas, descricao, preco, quantidade)
 values ("Pias", "itaiaia", "de madeira", 100, 1);
 insert into tb_produto(nomes, marcas, descricao, preco, quantidade)
 values ("parafusadeira", "bos", "de madeira", 20, 1);
 insert into tb_produto(nomes, marcas, descricao, preco, quantidade)
 values ("telhado", "dr.constuctor", "acrilico", 100, 100);
 insert into tb_produto(nomes, marcas, descricao, preco, quantidade)
 values ("Pias", "bluss", "inox", 1400, 1);
 insert into tb_produto(nomes, marcas, descricao, preco, quantidade)
 values ("Tijolos", "nogs", "pedra", 500, 1000);
 insert into tb_produto(nomes, marcas, descricao, preco, quantidade)
 values ("Pias", "itaiaia", "de madeira", 100, 1);
 insert into tb_produto(nomes, marcas, descricao, preco, quantidade)
 values ("porta", "lex", "de madeira", 700, 1);
 insert into tb_produto(nomes, marcas, descricao, preco, quantidade)
 values ("Pias", "itaiaia", "marfim", 8000, 1);
 
 
 select * from tb_produto;
 
  -- populando categoria  5 dados
  insert into tb_categoria(codigo_prod, tipo, entrega, fk_id)
 values (2222, "G", "Retirada Local", 1);
 insert into tb_categoria(codigo_prod, tipo, entrega, fk_id)
 values (3333, "G", "Retirada Local", 2);
 insert into tb_categoria(codigo_prod, tipo, entrega, fk_id)
 values (1111, "G", "Retirada Local", 3);
 insert into tb_categoria(codigo_prod, tipo, entrega, fk_id)
 values (4444, "G", "Retirada Local", 4);
 insert into tb_categoria(codigo_prod, tipo, entrega, fk_id)
 values (5555, "G", "Retirada Local", 5); 
 select * from tb_categoria;
 
 

 
 
 
 
 
 

