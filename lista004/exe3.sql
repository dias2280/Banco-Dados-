CREATE DATABASE ESCOLAexe3;
USE ESCOLAexe3;

CREATE TABLE instrutores (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  valor_hora INTEGER UNSIGNED NULL,
  certificados VARCHAR(255) NULL,
  PRIMARY KEY(id)
);
CREATE TABLE cursos (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  requisito VARCHAR(255) NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  preco DOUBLE UNSIGNED NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE alunos (
  id INT NOT NULL AUTO_INCREMENT,
  cpf CHAR(11) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  fone CHAR(14) NOT NULL,
  data_nascimento DATE NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE turmas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  instrutores_id INT NOT NULL,
  cursos_id INTEGER UNSIGNED NOT NULL,
  data_inicio DATE NULL,
  data_final DATE NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX turmas_FKIndex1(cursos_id),
  INDEX turmas_FKIndex2(instrutores_id),
  CONSTRAINT CURSO_TURMA_FK FOREIGN KEY(cursos_id)
    REFERENCES cursos(id),
  CONSTRAINT INSTRUTOR_TURMA_FK FOREIGN KEY(instrutores_id)
    REFERENCES instrutores(id)
);
 
CREATE TABLE matriculas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  turmas_id INTEGER UNSIGNED NOT NULL,
  alunos_id INT NOT NULL,
  data_matricula DATE NULL,
  PRIMARY KEY(id),
   CONSTRAINT ALUNO_MATRICULA_FK FOREIGN KEY(alunos_id)
    REFERENCES alunos(id),
  CONSTRAINT TURMA_MATRICULA_FK FOREIGN KEY(turmas_id)
    REFERENCES turmas(id)
);

-- /////////////////////// INSERTS ////////////////////////// --
insert into instrutores
set
nome = "Jose",
email = "jose@gmial.com",
valor_hora = "20",
certificados = "certificado por deus";

insert into instrutores
set
nome = "marcos",
email = "mare@gmial.com",
valor_hora = "20",
certificados = "EngCivil";

insert into cursos
set
nome = "connect",
requisito = "logica e vontade",
carga_horaria = "6",
preco = "0";

insert into cursos
set
nome = "farmacia",
requisito = "vbiologia",
carga_horaria = "9",
preco = "0";

insert into alunos
set
cpf = "000000000",
nome = "gabriel",
email ="g@gmail.com", 
fone = "44998931146",
data_nascimento = "1998-11-25";

insert into alunos
set
cpf = "23400000",
nome = "alberto",
email ="a@gmail.com", 
fone = "449333346",
data_nascimento = "1996-01-05";

insert into alunos
set
cpf = "23400000",
nome = "marcio",
email ="m@gmail.com", 
fone = "44923333346",
data_nascimento = "2000-03-05";

insert into turmas 
set
instrutores_id = 1,
cursos_id = 1,
data_inicio = "2010-06-06",
data_final = "2022-12-20",
carga_horaria = 10;



insert into matriculas
set
turmas_id = 1,
alunos_id = 1,
data_matricula = "2022-02-02";

insert into matriculas
set
turmas_id = 2,
alunos_id = 2,
data_matricula = "2020-02-02";

update instrutores set
nome = 'jailson',
email = 'asas@gmail.com'
where id = '1';

update cursos set
nome = "biopark",
requisito = "logica e vontade";

update  turmas 
set
instrutores_id = 1
where id = 1;

update  turmas 
set
instrutores_id = 2
where id = 2;

select * from instrutores;

delete from instrutores
where id = 2;

delete from instrutores
where id = 3;

select * from instrutores;

delete from cursos
where id = 2;

delete from cursos
where id = 3;

select * from cursos;

delete from alunos
where id = 2;

delete from alunos
where id = 3;

select * from alunos;

delete from turmas
where id = 2;

delete from turmas
where id = 3;

select * from turmas;

delete from matriculas
where id = 2;

delete from matriculas
where id = 3;

select * from matriculas;










