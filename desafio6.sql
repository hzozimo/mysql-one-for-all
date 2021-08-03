create view faturamento_atual as
select
min(p.valor) as "faturamento_minimo",
max(p.valor) as "faturamento_maximo",
round(sum(p.valor)/count(u.usuario_id), 2) as "faturamento_medio",
sum(p.valor) as "faturamento_total"
from SpotifyClone.plano as p
inner join SpotifyClone.usuario as u on p.plano_id = u.plano_id;
