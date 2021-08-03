create view estatisticas_musicais as
select
count(cancao_id) cancoes,
(select count(artista_id) from SpotifyClone.artista) artistas,
(select count(album_id) from SpotifyClone.album) albuns
from SpotifyClone.cancao;
