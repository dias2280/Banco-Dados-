create database CLINICA;
use CLINICA; 

create table MEDICO(
MEDICO_ID SMALLINT NOT NULL PRIMARY KEY,
CRM varchar(15) unique not null,
NOME varchar(40) not null,
IDADE int check(IDADE>23),
ESPECIALIDADE char(20) not null default 'Ortopedia',
CPF varchar(15) unique not null,
DATA_ADEMISSAO date
);

create table SALA(
SALA_ID int not null unique primary key,
NUMERO_SALA int not null unique,
ANDAR int unique not null,
check (NUMERO_SALA>1 and NUMERO_SALA<50),
check (ANDAR<12),
MEDICO_ID SMALLINT NOT NULL,
foreign key (MEDICO_ID) REFERENCES medico(MEDICO_ID)
);

create table PACIENTES(
RG varchar(15) unique not null ,
NOME varchar(40) not null,
DATA_NASCIMENTO date,
CIDADE char(30) default 'Itabuna',
DOENCA varchar(40) not null,
PLANO_SAUDE varchar(40) not null default 'SUS',
PACIENTE_CONSULTA int,
paciente_id smallint not null primary key 
);

create table FUNCIONARIOS(
MATRICULA varchar(15) unique not null,
NOME varchar(40) not null,
DATA_NASCIMENTO date not null,
DATA_ADMISSAO date not null,
CARGO varchar(40) not null default 'Assistente Medico',
SALARIO float not null default '510'
);

create table CUNSULTAS(
CODIGO_CONSULTA int unique not null primary key,
DATA_HORARIO datetime,
MEDICO_ID SMALLINT NOT NULL,
foreign key (MEDICO_ID) REFERENCES medico(MEDICO_ID),
PACIENTE_ID SMALLINT NOT NULL,
foreign key (PACIENTE_ID) REFERENCES pacientes(PACIENTE_ID)

);




