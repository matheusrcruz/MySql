/* Atividade 3 */

create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null,
ativo boolean not null,
primary key(id)
);

CREATE TABLE tb_produto(
 id bigint auto_increment,
 nome varchar(100),
 descricao varchar(200),
 quantidade bigint,
 preco decimal,
 categoria_id bigint,
 primary key (id),
 foreign key (categoria_id) references tb_categoria(id)
);
-- populando categoria
insert into tb_categoria (nome, ativo) values ("medicamento", true);
insert into tb_categoria (nome, ativo) values ("cosmetico", true);
insert into tb_categoria (nome, ativo) values ("higiene", true);
insert into tb_categoria (nome, ativo) values ("suplemento", true);
insert into tb_categoria (nome, ativo) values ("plantas medicinais", true);

-- populando produto
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("buscofem","alivia as dores",250, 20, 1);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Shampoo Personalizado 300ml","higiene capilar", 110, 80, 3);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Centrum", "vitamina", 111, 50, 4);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("esmalte risqué","esmalte", 350, 8, 2);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Chá de Equinácea","dieta natural", 150, 25, 5);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("sabonete granado","higiene pessoal", 550, 18, 3);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("renew","creme anti rugas", 250, 43, 2);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Whey Protein","suplemento muscular", 100, 25, 4);

-- regras de select e inner join
SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%B%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id WHERE tb_categoria.id = 3;
