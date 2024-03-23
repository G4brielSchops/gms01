/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.temp_pause1 = 0{
if instance_exists(obj_player) and point_distance(x, y, obj_player.x, obj_player.y) < 700 and lava = 1 {
	lava = 0
	alarm[0] = room_speed * random_range(1, 2.6)
	part_particles_create(global.P_System, x, y-32, global.part_lava, irandom_range(2, 5));
}
}











