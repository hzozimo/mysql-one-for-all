create view top_2_hits_do_momento as
select
c.titulo_cancao as cancao,
count(hr.cancao_id) as reproducoes
from SpotifyClone.cancao as c
inner join SpotifyClone.historico_de_reproducoes as hr on c.cancao_id = hr.cancao_id
group by c.cancao_id
order by reproducoes desc, cancao
limit 2;
