create database livraria;
use livraria;

create table editoras(
editora_id int not null primary key auto_increment,
nome_editora varchar (200) not null,
cnpj varchar(20) not null
);


create table autor(
autor_id int not null primary key auto_increment,
nome_autor varchar(200) not null,
telefone varchar (20)

);

create table categoria(
categoria_id int not null primary key auto_increment,
nome_categoria varchar (200) not null
);

create table livro(
livro_id int not null primary key auto_increment,
nome_livro varchar (150) not null, 
resumo varchar(200)

);

create table livro_autor(
livro_id int not null , 
autor_id int not null,
primary key(autor_id,livro_id),
foreign key (livro_id) references livro(livro_id),
foreign key (autor_id) references autor(autor_id)

);
create table livro_categoria(
categoria_id int not null,
livro_id int not null,
primary key (categoria_id,livro_id),
foreign key (categoria_id) references categoria(categoria_id),
foreign key (livro_id) references livro(livro_id)
);

select * from editoras;

insert into autor(nome_autor,telefone)
values ("josevaldo",44998931146);

update autor
set nome_autor = "jose aldo"
where autor_id =1;

delete from autor
where autor_id = 1;

insert into categoria(categoria_id,nome_categoria)
values (1,"Terrore");

update categoria
set nome_categoria = "Terror"
where categoria_id = 1;

insert into editoras(editora_id,nome_editora,cnpj)
values (1,"editora 1","12345678");

update editoras
set cnpj = "87654321"
where editora_id = 1;

delete from editoras
where editora_id = 1;

insert into livro(nome_livro,resumo)
values ("Aventuras da prati","resumo no youtube");

update livro
set nome_livro = "As aventuras biopark"
where livro_id = 1;

delete from livro
where livro_id = 1;

