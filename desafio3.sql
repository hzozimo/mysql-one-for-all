create view historico_reproducao_usuarios as
select
u.nome as usuario,
c.titulo_cancao as nome
from SpotifyClone.usuario as u
inner join SpotifyClone.historico_de_reproducoes as hr on u.usuario_id = hr.usuario_id
inner join SpotifyClone.cancao as c on c.cancao_id = hr.cancao_id
order by u.nome, c.titulo_cancao;
