DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plano(
plano_id int primary key auto_increment,
nome varchar(100) not null,
valor decimal(5,2) not null
);

CREATE TABLE usuario (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id)
REFERENCES plano (plano_id)
);

CREATE TABLE artista(
artista_id int primary key auto_increment,
nome varchar(100) not null
);

CREATE TABLE album(
album_id int primary key auto_increment,
titulo_album varchar(100) not null,
artista_id int not null,
foreign key(artista_id) references artista(artista_id)
);

CREATE TABLE cancao(
cancao_id int primary key auto_increment,
album_id int not null,
titulo_cancao varchar(100) not null,
foreign key(album_id) references album(album_id)
);

CREATE TABLE historico_de_reproducoes(
usuario_id int not null,
cancao_id int not null,
foreign key(usuario_id) references usuario(usuario_id),
foreign key(cancao_id) references cancao(cancao_id)
);

CREATE TABLE seguindo_artistas(
usuario_id int not null,
artista_id int not null,
foreign key(usuario_id) references usuario(usuario_id),
foreign key(artista_id) references artista(artista_id)
);

INSERT INTO plano (nome, valor)
VALUES
('gratuito', 0),
('universitario', 5.99),
('familiar', 7.99);

INSERT INTO usuario (nome, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO artista(nome)
VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');
  
INSERT INTO album (titulo_album, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO cancao (album_id, titulo_cancao)
VALUES
(1, "Soul For Us"),
(1, "Reflections Of Magic"),
(1, "Dance With Her Own"),
(2, "Troubles Of My Inner Fire"),
(2, "Time Fireworks"),
(3, "Magic Circus"),
(3, "Honey, So Do I"),
(3, "Sweetie, Let's Go Wild"),
(3, "She Knows"),
(4, "Fantasy For Me"),
(4, "Celebration Of More"),
(4, "Rock His Everything"),
(4, "Home Forever"),
(4, "Diamond Power"),
(4, "Honey, Let's Be Silly"),
(5, "Thang Of Thunder"),
(5, "Words Of Her Life"),
(5, "Without My Streets");
    
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 1, cancao_id from SpotifyClone.cancao where titulo_cancao like "Soul For Us";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 1, cancao_id from SpotifyClone.cancao where titulo_cancao like "Magic Circus";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 1, cancao_id from SpotifyClone.cancao where titulo_cancao like "Diamond power";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 1, cancao_id from SpotifyClone.cancao where titulo_cancao like "Thang Of Thunder";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 2, cancao_id from SpotifyClone.cancao where titulo_cancao like "Home Forever";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 2, cancao_id from SpotifyClone.cancao where titulo_cancao like "Words Of her Life";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 2, cancao_id from SpotifyClone.cancao where titulo_cancao like "Honey, Let's Be Silly";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 3, cancao_id from SpotifyClone.cancao where titulo_cancao like "Troubles Of My Inner Fire";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 3, cancao_id from SpotifyClone.cancao where titulo_cancao like "Thang of Thunder";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 3, cancao_id from SpotifyClone.cancao where titulo_cancao like "Magic Circus";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 4, cancao_id from SpotifyClone.cancao where titulo_cancao like "Dance With Her Own";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 4, cancao_id from SpotifyClone.cancao where titulo_cancao like "Without My Streets";
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
SELECT 4, cancao_id from SpotifyClone.cancao where titulo_cancao like "Celebration Of More";

-- Andre Menezes ajudou a tirar meus bugs :D

INSERT INTO seguindo_artistas (usuario_id, artista_id)
SELECT 1, artista_id from SpotifyClone.artista where nome like "Walter Phoenix";
INSERT INTO seguindo_artistas (usuario_id, artista_id)
SELECT 1, artista_id from SpotifyClone.artista where nome like "Freedie Shannon";
INSERT INTO seguindo_artistas (usuario_id, artista_id)
SELECT 1, artista_id from SpotifyClone.artista where nome like "Lance Day";
INSERT INTO seguindo_artistas (usuario_id, artista_id)
SELECT 2, artista_id from SpotifyClone.artista where nome like "Walter Phoenix";
INSERT INTO seguindo_artistas (usuario_id, artista_id)
SELECT 2, artista_id from SpotifyClone.artista where nome like "Lance Day";
INSERT INTO seguindo_artistas (usuario_id, artista_id)
SELECT 3, artista_id from SpotifyClone.artista where nome like "Peter Strong";
INSERT INTO seguindo_artistas (usuario_id, artista_id)
SELECT 3, artista_id from SpotifyClone.artista where nome like "Walter Phoenix";
INSERT INTO seguindo_artistas (usuario_id, artista_id)
SELECT 4, artista_id from SpotifyClone.artista where nome like "Freedie Shannon";
