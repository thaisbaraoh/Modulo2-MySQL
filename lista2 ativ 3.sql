create database db_farmacia_do_bem;
use db_farmacia_do_bem;
create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,

primary key (id)
);
insert tb_categoria (descricao, ativo) values ("Remedio",true);
insert tb_categoria (descricao, ativo) values ("Infantil",true);
insert tb_categoria (descricao, ativo) values ("vitamina",true);
insert tb_categoria (descricao, ativo) values ("Cosmeticos",true);
insert tb_categoria (descricao, ativo) values ("Bebidas",true);
select *from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) ,
codigo bigint,
fabricante varchar (255) not null,
valor  decimal,
produtos_id bigint,

foreign key (produtos_id) references tb_categoria (id),
primary key (id)
);
insert into tb_produtos (nome, codigo, fabricante,valor, produtos_id) values ("Dipirona",09787,"Dipmed",7.85,2);
insert into tb_produtos (nome, codigo, fabricante,valor, produtos_id) values ("fraldas",09712,"Pampers",99.90,3);
insert into tb_produtos (nome, codigo, fabricante,valor, produtos_id) values ("agua mineral",09745,"Crystal",5.83,1);
insert into tb_produtos (nome, codigo, fabricante,valor, produtos_id) values ("Vitamina C",09791,"Cenevit",9.05,4);
insert into tb_produtos (nome, codigo, fabricante,valor, produtos_id) values ("esmalte",09766,"Vult",12.44,5);
insert into tb_produtos (nome, codigo, fabricante,valor, produtos_id) values ("Fluoxetina",09732,"Dipmed",7.85,2);
insert into tb_produtos (nome, codigo, fabricante,valor, produtos_id) values ("chupeta",09712,"Avent",45.00,3);
insert into tb_produtos (nome, codigo, fabricante,valor, produtos_id) values ("Energetico ",09087,"Reed bull",15.09,1);
select * from tb_produtos;
select * from tb_produtos where valor > 50;
select * from tb_produtos where valor between 3 and 60;
select * from tb_produtos where nome like 'b%';
select * from tb_produtos inner join tb_categoria on tb_produtos.produtos_id=tb_categoria.id;
select * from tb_produtos inner join tb_categoria on tb_produtos.produtos_id=tb_categoria.id where tb_categoria.descricao = "remedios";

