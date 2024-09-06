create schema agenda;

create table contato(
    id int primary key,
    nome varchar (30) not null,
    sobrenome varchar(30) not null,
    nascimento date,
    peso decimal(10,2)
);

create table email(
    id int primary key,
    email varchar(60) not null unique,
    contato_fk int,
    foreign key (contato_fk) references contato(id)
);

create table grupo(
    id int primary key,
    nome varchar(30) not null
);

create table afiliacao(
    grupo_fk int not null,
    contato_fk int not null,
    primary key (grupo_fk, contato_fk),
    foreign key (grupo_fk) references grupo(id),
    foreign key (contato_fk) references contato(id)
);

