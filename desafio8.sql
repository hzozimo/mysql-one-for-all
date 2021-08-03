delimiter $$
create trigger trigger_usuario_delete
before delete on SpotifyClone.usuario
for each row
begin
delete from SpotifyClone.seguindo_artistas where seguindo_artistas.usuario_id = old.usuario_id;
delete from SpotifyClone.historico_de_reproducoes where historico_de_reproducoes.usuario_id = old.usuario_id;
end $$
delimiter ;
