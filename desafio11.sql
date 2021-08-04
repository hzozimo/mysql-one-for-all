-- create view cancoes_premium as
select 
c.titulo_cancao as nome,
count(hr.cancao_id) as reproducoes
from SpotifyClone.cancao as c
inner join SpotifyClone.historico_de_reproducoes as hr on c.cancao_id = hr.cancao_id
inner join SpotifyClone.usuario as u on hr.usuario_id = u.usuario_id
where u.plano_id in (2 ,3)
group by c.titulo_cancao
order by c.titulo_cancao;
