/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
part_particles_create(global.P_System, x, y, global.part_death_boss_magma, 200);
repeat(375){
	instance_create_layer(x, y, layer, obj_particulas_xp)
}
repeat(50){
	instance_create_layer(x, y, layer, obj_particulas_de_vida1)
}
repeat(30){
	instance_create_layer(x, y, layer, obj_part_mana1)
}
instance_destroy(obj_chao_boss6)
instance_destroy(obj_verificar_boss1)
global.mana_reduzir += 1
global.tamanho_barra_de_mana += 10
obj_chao_boss1.y += 700
global.coins += 250
global.reviver += 1
global.dar_xp = 1











