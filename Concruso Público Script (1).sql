create database concurso_publico;

use concurso_publico;

create table cargos (
idcargos int auto_increment,
nome varchar(45) not null,
primary key (idcargos)
);

create table concursos (
idconcursos int auto_increment,
data date,
nome varchar (45),
primary key (idconcursos)
);

create table candidatos (
idcandidatos int auto_increment,
nome varchar (45) not null,
sobrenome varchar (45),
cpf char (11) not null,
telefone char (15) not null,
email varchar (60),
primary key (idcandidatos)
);

create table inscricao (
idinscricao int auto_increment,
idcargo int,
idconcurso int,
idcandidato int,
primary key (idinscricao),
foreign key (idcargo) references cargos (idcargos),
foreign key (idconcurso) references concursos (idconcursos),
foreign key (idcandidato) references candidatos (idcandidatos)
);

insert into cargos 
(idcargos, nome)
values
(null, 'policia_federal');

insert into candidatos
(idcandidatos,nome,sobrenome,cpf,telefone,email)
values
(null,'Trevor','Belmont','77777777708','24999123456',null);

insert into concursos
(idconcursos,data,nome)
values
(null,'2023-06-05','prf');

select * from inscricao;

insert into inscricao
(idinscricao,idcargo,idconcurso,idcandidato)
values
(null,'1','1','1');