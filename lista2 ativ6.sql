create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria
(
id bigint auto_increment,
matricula boolean not null,
ensino varchar(50) not null,
ead boolean not null,

primary key (id)
);
insert into tb_categoria (matricula,ensino,ead) values (true, "Graduação", true);
insert into tb_categoria (matricula,ensino,ead) values (true, "Pós-graduação", true);
insert into tb_categoria (matricula,ensino,ead) values (true, "Mestrado", true);
insert into tb_categoria (matricula,ensino,ead) values (true, "Doutorado", true);
insert into tb_categoria (matricula,ensino,ead) values (true, "PHD", true);
select * from tb_categoria;

create table tb_curso
(
id bigint auto_increment,
nome varchar (255) not null,
turma bigint not null,
unidade varchar (255) not null,
valor decimal (65,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
insert into tb_curso (nome,turma,unidade,valor,categoria_id) values ("Nutrição",5,"Campo Limpo",700.00,1);
insert into tb_curso (nome,turma,unidade,valor,categoria_id) values ("Historia",12,"Osasco",600.00,2);
insert into tb_curso (nome,turma,unidade,valor,categoria_id) values ("Desing Digital",11,"Liberdade",1500.00,3);
insert into tb_curso (nome,turma,unidade,valor,categoria_id) values ("Psicologia",8,"Grajau",950.00,4);
insert into tb_curso (nome,turma,unidade,valor,categoria_id) values ("Turismo",3,"Barueri",1700.00,5);
insert into tb_curso (nome,turma,unidade,valor,categoria_id) values ("RH",22,"Osasco",450.00,1);
insert into tb_curso (nome,turma,unidade,valor,categoria_id) values ("Moda",3,"Sé",1350.00,2);
insert into tb_curso (nome,turma,unidade,valor,categoria_id) values ("Tecnologia da Informação",4,"Sorocaba",900.00,4);
select * from tb_curso;
select * from tb_curso where valor > 500.00;
select * from tb_curso where valor between 500 and 3000;
select * from tb_curso where nome like "%c%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.ensino = "Doutorado";




