/* Atividade 2 */
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



