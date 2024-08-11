-- CRIANDO BANCO DE DADOS 
create database clientes;
use clientes;

-- CRIANDO TABELAS 
create table acionistas (
id int not null primary key,
nome varchar (20),
sobrenome varchar (20),
profissao varchar (20),
data_nasc date 
);

create table ações (
id int not null,
empresa varchar (20),
código varchar (20), 
data_ipo date,
qntd int
 );

-- SELECIONANDO TABELAS 
select*from acionistas;
select*from ações;

-- SELECIONANDO COLUNAS E ORDENANDO POR ORDEM CRESCENTE 
select nome, sobrenome from acionistas order by nome asc;
select empresa from ações where id in (2, 3, 5);
select empresa from ações where id between '1' and '3';

-- INSERINDO VALORES NAS TABELAS 
insert into acionistas (id, nome, sobrenome, profissao, data_nasc) 
values ("05", "Ana", "Sousa", "Modelo", "2002-09-21");

insert into ações (id, valor) values (1, 25);

insert into ações (id, empresa, código, data_ipo, qntd) 
values ("05", "Nubank", "NUBR33", "2015-08-16", "47000");


-- REALIZANDO JUNÇÃO DE TABELAS COM JOINS
select acionistas.nome, acionistas.sobrenome, ações.empresa, ações.código
from acionistas join ações;


-- TOTAL DE ACIONISTAS
select count(id) from acionistas;

-- AVALIANDO A MÉDIA DE UM VALOR 
select avg (qntd) from ações;

-- AVALIANDO O VALOR MÁXIMO
select max(qntd) from ações;

-- AVALIANDO O VALOR MÍNIMO 
select min(qntd) from ações;

-- SOMANDO TODAS AS AÇÕES 
select sum(qntd) from ações;

-- ADICIONANDO COLUNA NA TABELA 
alter table acionistas add sexo varchar (20);
alter table ações add valor int;

-- REMOVENDO A COLUNA 
alter table acionistas drop column sexo;
alter table ações drop column valor;

select*from ações;
