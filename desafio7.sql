create view perfil_artistas as
select 
ar.nome as artista,
al.titulo_album as album,
count(sa.usuario_id) as seguidores
from SpotifyClone.artista as ar
inner join SpotifyClone.album as al on ar.artista_id = al.artista_id
inner join SpotifyClone.seguindo_artistas as sa on sa.artista_id = ar.artista_id
group by al.album_id
order by seguidores desc, artista asc, album asc;