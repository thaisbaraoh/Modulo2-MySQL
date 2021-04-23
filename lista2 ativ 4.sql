create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
peso decimal,

primary key (id)
);
insert tb_categoria (descricao,peso) values ("Bovino",0.500);
insert tb_categoria (descricao,peso) values ("Ave",1.500);
insert tb_categoria (descricao,peso) values ("Suino",7.530);
insert tb_categoria (descricao,peso) values ("Miudos",10.200);
select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal,
codigoProduto bigint,
produto_id bigint,
foreign key (produto_id) references tb_categoria (id),
primary key (id)
);
insert into tb_produto (nome, preco, codigoProduto, produto_id) values ("Coracãozinho",25, 00894,1);
insert into tb_produto (nome, preco, codigoProduto, produto_id) values ("Asinha",22, 00456,3);
insert into tb_produto (nome, preco, codigoProduto, produto_id) values ("Linguiça Toscana",12, 00233,4);
insert into tb_produto (nome, preco, codigoProduto, produto_id) values ("Picanha",75, 00368,2);
insert into tb_produto (nome, preco, codigoProduto, produto_id) values ("Figado Bovino",33, 00458,1);
insert into tb_produto (nome, preco, codigoProduto, produto_id) values ("Bacon",10, 00410,4);
insert into tb_produto (nome, preco, codigoProduto, produto_id) values ("Patinho",55, 00988,2);
insert into tb_produto (nome, preco, codigoProduto, produto_id) values ("File de Frango",43, 00432,2);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like 'c%';
select * from tb_produto inner join tb_categoria on tb_produto.produto_id=tb_categoria.id where tb_categoria.descricao = "Bovino";
select * from tb_produto inner join tb_categoria on tb_produto.produto_id=tb_categoria.id;



