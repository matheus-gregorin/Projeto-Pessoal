create database site;
use site;

create table usuarios (
idUsuario int primary key auto_increment,
nomeUsuario varchar (25),
email varchar(50),
senha varchar (10),
fk_jogador int,
foreign key (fk_jogador) references jogadores(idJogador)
);

create table jogadores (
idJogador int primary key auto_increment,
nomeJogador varchar (45),
idade varchar (3),
posicao varchar (30),
dtInicio date,
golsTemp varchar (2),
assiTemp varchar (2),
numeroJogos varchar(5),
golsSofridos varchar(3)
);

create table conquistas (
fk_trofeu int,
foreign key (fk_trofeu) references trofeis(idTrofeu),
fk_jogador int,
foreign key (fk_jogador) references jogadores(idJogador),
dtConquista date
);

create table trofeis (
idTrofeu int primary key auto_increment,
nomeTitulo varchar (50)
);

select * from usuarios;
select * from jogadores;
select * from conquistas;
select * from trofeis;

#drop table jogadores;
#drop table usuarios;
#drop table conquistas;
#drop table trofeis;



insert into usuarios values (1, 'matheus', 'math@gmail.com.br', '123456', 1),
                            (2, 'matheus', 'math@gmail.com.br', '123457', 2),
                            (3, 'matheus', 'math@gmail.com.br', '123458', 3),
                            (4, 'matheus', 'math@gmail.com.br', '123459', 4),
                            (5, 'matheus', 'math@gmail.com.br', '123451', 5),
                            (6, 'matheus', 'math@gmail.com.br', '123452', 6),
                            (7, 'matheus', 'math@gmail.com.br', '123453', 7),
                            (8, 'matheus', 'math@gmail.com.br', '123456', 8),
                            (9, 'matheus', 'math@gmail.com.br', '123456', 9),
                            (10, 'matheus', 'math@gmail.com.br', '123456', 10),
                            (11, 'matheus', 'math@gmail.com.br', '123456', 11),
                            (12, 'matheus', 'math@gmail.com.br', '123456', 12),
                            (13, 'matheus', 'math@gmail.com.br', '123456', 13),
                            (14, 'matheus', 'math@gmail.com.br', '123456', 7),
                            (15, 'matheus', 'math@gmail.com.br', '123456', 10);
                            
insert into usuarios values (16, 'matheus', 'math@gmail.com.br', '123416', 10),
                            (17, 'matheus', 'math@gmail.com.br', '123426', 10),
                            (18, 'matheus', 'math@gmail.com.br', '123436', 10),
                            (19, 'matheus', 'math@gmail.com.br', '123446', 10),
                            (20, 'matheus', 'math@gmail.com.br', '123456', 7),
                            (21, 'matheus', 'math@gmail.com.br', '123466', 7),
                            (22, 'matheus', 'math@gmail.com.br', '123476', 7);
                            
insert into usuarios values (23, 'matheus', 'math@gmail.com.br', '123316', 10),
                            (24, 'matheus', 'math@gmail.com.br', '123416', 10),
                            (25, 'matheus', 'math@gmail.com.br', '123516', 10);
                            
                            
                            

insert into jogadores values (1, 'Cassio', '34', 'Goleiro', '2012-03-28', '0', '0', '585', '476'),
                             (2, 'Fabio Santos', '36', 'Lateral-Esquerdo', '2011-01-30', '2', '3', '10', '0'),
                             (3, 'Fagner', '32', 'Lateral-Direito', '2006-11-01', '3', '6', '320', '0'),
                             (4, 'Gil', '34', 'Zagueiro', '2013-01-23', '1', '0', '230', '0'),
                             (5, 'João Vitor', '23', 'Zagueiro', '2019-06-29', '0', '0', '28', '0'),
                             (6, 'Du Queiroz', '22', 'Volante', '2021-08-22', '4', '5', '26', '0'),
                             (7, 'Maycon', '24', 'Volante', '2016-02-01', '5', '3', '120', '0'),
                             (8, 'Paulinho', '33', 'Volante', '2010-04-25', '2', '1', '190', '0'),
                             (9, 'Adson', '21', 'Meia', '2021-03-07', '4', '2', '20', '0'),
                             (10, 'William', '33', 'Meia', '2005-12-11', '1', '0', '30', '0'),
                             (11, 'Renato Augusto', '34', 'Meia Atacante', '2013-01-27', '6', '4', '103', '0'),
                             (12, 'Roger Guedes', '25', 'Atacante', '2021-07-21', '6', '4', '22', '0'),
                             (13, 'Jo', '35', 'Atacante', '2003-06-19', '3', '0', '160', '0');
                             



# Select Site

select jogadores.nomeJogador, COUNT(usuarios.fk_jogador)
from usuarios
inner join jogadores
on usuarios.fk_jogador = jogadores.idJogador group by fk_jogador;

select jogadores.nomeJogador, COUNT(usuarios.fk_jogador)
from usuarios
inner join jogadores
on usuarios.fk_jogador = jogadores.idJogador WHERE FK_JOGADOR = 1;

select jogadores.nomeJogador, COUNT(usuarios.fk_jogador) as 'Favorito'
    from usuarios
    inner join jogadores
    on usuarios.fk_jogador = jogadores.idJogador order by nomeJogador;