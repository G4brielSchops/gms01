/// @description Inserir descrição aqui
// Você pode escrever seu código neste edito
part_particles_create(global.P_System, x, y, global.part_death, 150);


if room = rm_tutorial{
	room_restart()
	global.vida = 50
}
if room = rm_fase1{
	instance_create_layer(256, 736, "Instances", obj_player)
	global.vida = 50
	global.coins -= 10
}
if room = rm_fase2{
	instance_create_layer(672, 736, "Instances", obj_player)
	global.vida = 50
	global.coins -= 10
}
if room = rm_fase3{
	instance_create_layer(128, 736, "Instances", obj_player)
	global.vida = 50
	global.coins -= 10
}
if room = rm_fase4{
	instance_create_layer(128, 736, "Instances", obj_player)
	global.vida = 100
	obj_boss_magma.life = 100
	obj_boss_magma.x = 3488
	obj_boss_magma.y = 416
	obj_boss_magma.criar_pet = 1
	obj_verificar_boss1.destruir = 1
	obj_chao_boss1.y += 700
	inst_15898FBF.x -= 1000
	 if instance_exists(obj_pet_boss_magma) instance_destroy(obj_pet_boss_magma)
}
if room = rm_fase7{
	instance_create_layer(224, 736, "Instances", obj_player)
	global.vida = 50
	global.coins -= 10
}
if room = rm_fase8{
	instance_create_layer(96, 736, "Instances", obj_player)
	global.vida = 50
	global.coins -= 10
}









