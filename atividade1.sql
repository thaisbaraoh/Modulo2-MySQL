create database db_RH;
use rh;

create table tb_funcionario(
id bigint auto_increment,
nome varchar (255) not null,
sobreNome varchar (255) not null,
salario float not null,
matricula bigint,
profissao varchar (255) not null,

primary key (id) 
);
insert into tb_funcionario (nome, sobreNome, salario, matricula, profissao) values ("Thais","Barao",3000.00,0001,"Desenvolvedora");
insert into tb_funcionario (nome, sobreNome, salario, matricula, profissao) values ("Jonathan","Ribeiro",1500.00,0002,"gari");
insert into tb_funcionario (nome, sobreNome, salario, matricula, profissao) values ("Amanda","Noyori",5000.00,0003,"Dev team");
insert into tb_funcionario (nome, sobreNome, salario, matricula, profissao) values ("Jessika","Cunha",6000.00,0004,"P.O");
insert into tb_funcionario (nome, sobreNome, salario, matricula, profissao) values ("Mayara","Dantas",4000.00,0005,"Scrum master");

select * from tb_funcionario;
select * from tb_funcionario where salario > 2000.00;
select * from tb_funcionario where salario < 2000.00;
update tb_funcionario set salario = 2500.00 where id = 2;



