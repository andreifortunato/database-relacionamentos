drop database relacionamentos;
create database relacionamentos;
use relacionamentos;

create table CLIENTE (
IdCliente integer primary key,
nome varchar(50)
);

create table FISICA (
IdFisica integer primary key,
CPF decimal(11) not null,
foreign key (idFisica) references Cliente (idCliente)
);

create table JURIDICA (
IdJuridica integer primary key,
CNPJ decimal(11) not null,
foreign key (idJuridica) references Cliente (idCliente)
);

insert into CLIENTE values(01,"Jarilene");
insert into CLIENTE values(02,"Joriline");
insert into CLIENTE values(03,"Jurilene");
insert into CLIENTE values(04,"Construir Ltda");
insert into CLIENTE values(05,"Derrubar SA");
insert into CLIENTE values(06,"Reconstruir ME");

insert into FISICA values(01,02102102121);
insert into FISICA values(02,02202202222);
insert into FISICA values(03,02302302323);

insert into JURIDICA values(04,88888880001);
insert into JURIDICA values(05,99999990001);
insert into JURIDICA values(06,77777770001);

create table PRODUTO (
CODIGO integer primary key,
nome varchar(50) not null
);

create table PEDIDO (
NUMERO integer primary key,
VALOR decimal(11) not null,
idCliente integer not null,
foreign key (idCliente) references Cliente (idCliente)
);

create table PRODUTOPEDIDO (
CODPRODUTO integer,
NUMPEDIDO integer,
primary key (CODPRODUTO, NUMPEDIDO),
foreign key (CODPRODUTO) references PRODUTO(CODIGO),
foreign key (NUMPEDIDO) references PEDIDO(NUMERO)
);

