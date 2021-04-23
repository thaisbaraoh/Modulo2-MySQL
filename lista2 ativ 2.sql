create database db_pizzaria_legal;
use db_pizzaria_legal;
create table  tb_categoria(
id bigint auto_increment,
tamanho varchar (255) not null,
categoria varchar (255) not null,
contem varchar (255) not null,

primary key (id)

);
create table tb_pizza(
id bigint auto_increment,
nome varchar (255) not null,
ingredientes varchar (255) not null,
Valor float,
tamanho varchar (255) not null,
borda  boolean,
pizza_id bigint,

foreign key (pizza_id) references tb_categoria (id),
primary key (id)
);
insert into tb_categoria(tamanho, categoria, contem) values ("Grande","Salgada","Derivado de leite, gluten");
insert into tb_categoria(tamanho, categoria, contem) values ("Media","Doce","Derivado de leite, gluten");
insert into tb_categoria(tamanho, categoria, contem) values ("Pequena","Salgada","Derivado de leite, gluten");
insert into tb_categoria(tamanho, categoria, contem) values ("Grande","Vegana","não contem");
insert into tb_categoria(tamanho, categoria, contem) values ("Pequena","doce","Derivado de leite, gluten");
select * from tb_categoria;

insert into tb_pizza(nome, ingredientes, valor,tamanho, borda, pizza_id) values ("Calabresa","calabresa e cebola",52, "Grande", true, 1);
insert into tb_pizza(nome, ingredientes, valor,tamanho, borda, pizza_id) values ("Morango com chocolate","Morango com chocolate",35, "Media", true,2);
insert into tb_pizza(nome, ingredientes, valor,tamanho, borda, pizza_id) values ("calabresa","calabresa e cebola",30, "Pequena", true, 3);
insert into tb_pizza(nome, ingredientes, valor,tamanho, borda, pizza_id) values ("Brocolis","Brocolis e cebola",52, "Grande", true, 4);
insert into tb_pizza(nome, ingredientes, valor,tamanho, borda, pizza_id) values ("morango","morango com chocolate",22, "pequena", true,5);
insert into tb_pizza(nome, ingredientes, valor,tamanho, borda, pizza_id) values ("abobrinha","abobrinha a e cebola",43, "media", true,4);
select * from tb_pizza;

select * from tb_pizza where valor > 45;
select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where nome like 'c%';
select * from tb_pizza inner join tb_categoria on tb_pizza.pizza_id=tb_categoria.id;
select * from tb_pizza inner join tb_categoria on tb_pizza.pizza_id=tb_categoria.id where tb_categoria.categoria = "doce";



