create view top_3_artistas as
select
a.nome as artista,
count(sa.usuario_id) as seguidores
from SpotifyClone.artista as a
inner join SpotifyClone.seguindo_artistas as sa on a.artista_id = sa.artista_id
group by a.artista_id
order by seguidores desc, artista
limit 3;
