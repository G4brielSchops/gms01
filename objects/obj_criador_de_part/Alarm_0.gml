/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if instance_exists(obj_player) and point_distance(x, y, obj_player.x, obj_player.y) < 1000{
part_particles_create(global.P_System, x, y, global.part_vento1, 2);
}
alarm[0] = 5










