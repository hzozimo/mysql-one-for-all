use SpotifyClone;
delimiter $$
create function quantidade_musicas_no_historico (id int)
returns int reads sql data
begin
declare quantidade int;
select count(*) into quantidade from SpotifyClone.historico_de_reproducoes where id = usuario_id;
return quantidade;
end $$
delimiter ;
