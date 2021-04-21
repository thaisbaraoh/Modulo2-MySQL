create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
descricao varchar (255) not null,
valor float,
quantidade int (3),
marca varchar (255),

primary key (id)
);
insert into tb_produtos (nome, descricao, valor, quantidade, marca) values ("Thais","Torradeira",250.00,1,"mondial");
insert into tb_produtos (nome, descricao, valor, quantidade, marca) values ("Jonathan","Geladeira",2500.00,1,"Brastemp");
insert into tb_produtos (nome, descricao, valor, quantidade, marca) values ("Jessika","fritadeira",550.00,1,"Phlico");
insert into tb_produtos (nome, descricao, valor, quantidade, marca) values ("Mayara","Microondas",850.00,1,"Brastemp");
insert into tb_produtos (nome, descricao, valor, quantidade, marca) values ("Junior","Lava Seca",5000.00,1,"Samsung");
insert into tb_produtos (nome, descricao, valor, quantidade, marca) values ("Maria","Televisão",6000.00,1,"LG");
insert into tb_produtos (nome, descricao, valor, quantidade, marca) values ("Jose","DVD",650.00,1,"LG");
insert into tb_produtos (nome, descricao, valor, quantidade, marca) values ("Luan","som",450.00,1,"Samsung");

select * from tb_produtos;
delete from  tb_produtos where id = 2;
select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;
update tb_produtos set marca = "LG" where id = 9;


