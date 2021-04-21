create database db_escola;
use db_escola;
create table tb_alune(
	id bigint auto_increment,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    matricula bigint not null,
    idade bigint not null,
    media decimal (10,2) not null,
    primary key (id)
);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Thais", "Barão", 0001, 28, 9.9);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Junior", "Honorato", 004, 32, 6.6);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Murillo", "Honorato", 005, 24, 9.5);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Maria", "Silva", 006, 21, 6.5);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Rosa", "Gomes", 007, 35, 8.8);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Caio", "Pontani", 008, 32, 9.2);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Lia", "Bernardo", 009, 45, 10.0);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Thaina", "Matins", 030, 25, 5.5);

select * from tb_alune;
select * from tb_alune where media > 7;
select * from tb_alune where media < 7;

update tb_alune set matricula = 010 where id = 1;