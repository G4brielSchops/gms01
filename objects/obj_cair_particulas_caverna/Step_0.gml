/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.temp_pause1 = 0{
if instance_exists(obj_player) and point_distance(x, y, obj_player.x, obj_player.y) < 900 and caverna = 1 {
caverna = 0
alarm[0] = room_speed * random_range(2.5, 3)
part_particles_create(global.P_System, x, y, global.part_caverna_particulas1, 1);
}
}











