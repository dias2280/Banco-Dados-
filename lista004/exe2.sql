create database escola;
use escola;

create table professor(
professor_id int not null primary key auto_increment,
nome varchar(200) not null,
ultimo_nome varchar(200) not null,
data_admissao date
);

create table aula(
aula_id int not null primary key auto_increment,
horario varchar(200) not null,
nome varchar(200) not null,

professor_id int,
foreign key (professor_id) references professor(professor_id)
);


create table turma(
turma_id int not null primary key auto_increment,
nome varchar(200) not null,
horario varchar(200) not null,

professor_id int,
foreign key (professor_id) references professor(professor_id)

);

create table aluno(
aluno_id int not null primary key auto_increment,
nome varchar(200) not null,
ultimo_nome varchar(200) not null,
data_matricula date,

turma_id int,
foreign key (turma_id) references turma(turma_id),

aula_id int,
foreign key (aula_id) references aula(aula_id)
);

alter table turma
add aluno_id int not null;

alter table turma
add foreign key (aluno_id) references aluno(aluno_id);

create table turma_professor(
turma_id int not null,
professor_id int not null,
primary key (turma_id,professor_id),
foreign key (turma_id) references turma(turma_id),
foreign key (professor_id) references professor(professor_id)
);

insert into professor(nome,ultimo_nome) values ("gabriel","dias");

update professor 
set 
nome = "jose" ,
ultimo_nome = "alberto" 
where professor_id = 1;

delete from professor
where professor_id = 1;

insert into aluno(nome,ultimo_nome) values ("jose","filho");

update aluno
set
nome = "Alberto",
ultimo_nome = "silva"
where aluno_id = 1;

delete from aluno 
where aluno_id = 1;

insert into aula(horario,nome) values ("Vespertino","matematica");

update aula
set
horario = "noturno",
nome = "historia"
where aula_id = 1;

delete from aula 
where aula_id = 1;

insert into turma(aluno_id,nome,horario) values (2,"Primeiro ANO B","Noturno");

select * from aluno;

update turma 
set
nome = "Segundo Ano B"
where aluno_id = 2;

delete from turma
where turma_id = 2;


