/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if instance_exists(obj_player){
if point_direction(x, y, obj_player.x, obj_player.y) > 90 and point_direction(x, y, obj_player.x, obj_player.y) < 270{
	left = 0
	right = 1
}
else{
	left = 1
	right = 0
}
atirar = 1
if left = 1 {
	sprite_index = spr_inimigo_ceu2
}
if right = 1 {
	sprite_index = spr_inimigo_ceu22
}
if left = 0 and right = 0{
	sprite_index = spr_inimigo_ceu2
}
alarm[4] = 65
}











