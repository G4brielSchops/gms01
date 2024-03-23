/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.temp_pause1 = 0{
	if instance_exists(obj_player) and point_distance(x, y, obj_player.x, obj_player.y) < 700 and alarme = 1 {
		alarm[0] = room_speed * random_range(3, 3.5)
		alarm[1] = room_speed * 2.7
		image_blend = -1
		alarme = 0
	}
}











