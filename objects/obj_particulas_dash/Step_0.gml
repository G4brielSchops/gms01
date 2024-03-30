/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _random_xy = random_range(.7, 1.4)
image_xscale = _random_xy
image_yscale = _random_xy
if speed <= 0{
	speed = 0
	x = obj_player.x + c
	y = obj_player.y + p
}
else if voltar = 0 speed -= .1


if voltar = 1{
	speed += .05
	if instance_exists(obj_player) direction = point_direction(x, y, obj_player.x, obj_player.y)
}









