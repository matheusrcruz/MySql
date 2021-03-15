/* Atividade 2


O sistema trabalhará com 2 tabelas tb_pizza(atributos 5) e tb_categoria(fk_key e 3 atributos).
siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_pizzaria_legal;
use db_pizzaria_legal;
/*O sistema trabalhará com 2 tabelas tb_pizza(atributos) e tb_categoria(fk_key e 3 atributos).*/
create table tb_pizza(
id_pedido bigint auto_increment,
pizza_sabor varchar(30),
tamanho enum("Pequena 2", "Media 8 ", "Grande 16") ,
descricao varchar(100),
acompanhamento varchar(100),
preco bigint not null,
primary key(id_pedido)
);
create table tb_categoria(
id bigint auto_increment,
tipo_entrega enum("Delivery", "Local"),
bebidas enum("Sim", "Não"),
entrega_id bigint not null,
primary key(id),
foreign key(entrega_id) references tb_pizza(id_pedido)
);

-- popular tb_pizza 
insert into tb_pizza(pizza_sabor, tamanho,descricao, acompanhamento, preco) 
values ("pizza_calabresa", "Grande 16", "Sem cebola e borda recheada","Coca-cola", 60 );
insert into tb_pizza(pizza_sabor, tamanho,descricao, acompanhamento, preco) 
values ("pizza_queijo", "Media 8", "Borda recheada catupiry ","Soda" , 40);
insert into tb_pizza(pizza_sabor, tamanho,descricao, acompanhamento, preco) 
values ("pizza_4queijo", "Media 8", "Borda recheada de chedar ","fanta uva", 40 );
insert into tb_pizza(pizza_sabor, tamanho,descricao, acompanhamento, preco) 
values ("pizza_frango e catupiry", "Grande 16", "Borda recheada de chedar ","fanta uva" , 60);
insert into tb_pizza(pizza_sabor, tamanho,descricao, acompanhamento, preco) 
values ("pizza_chocolate", "Pequena 2", "Borda recheada de chedar ","fanta uva", 25 );
select * from tb_pizza;

-- popular catgoria 
insert into tb_categoria( tipo_entrega, bebidas, entrega_id ) values ( "Delivery","Sim",1);
insert into tb_categoria( tipo_entrega, bebidas, entrega_id ) values ( "local","Sim",2);
insert into tb_categoria( tipo_entrega, bebidas, entrega_id ) values ( "Delivery","Sim",3);
insert into tb_categoria( tipo_entrega, bebidas, entrega_id ) values ( "local","Sim",4);
insert into tb_categoria( tipo_entrega, bebidas, entrega_id ) values ( "Delivery","Sim",5);

-- retornando valores maior que 45
select * from tb_pizza where preco > 45;

-- retonando produtos com valor entre 29 e 60 reais.
select * from tb_pizza where preco between 29 and 60;

-- retornado select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where pizza_sabor like "%c%";

-- retorne um select com Inner join entre tabela categoria e pizza. estou trazendo tipo de entrga e pizza
select tb_pizza.pizza_sabor, tb_categoria.tipo_entrega from tb_pizza
	inner join  tb_categoria on tb_categoria.id = tb_categoria.entrega_id;



