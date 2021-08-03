use SpotifyClone;
delimiter $$
create procedure albuns_do_artista (in nome varchar(50))
begin
select 
a.nome as artista, 
al.titulo_album as album
from SpotifyClone.artista as a
inner join SpotifyClone.album as al on al.artista_id = a.artista_id and a.nome like nome
order by album;
end $$
delimiter ;
