/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if imune_boss = 0 and obj_boss_magma.morrer = 0{
	imune_boss = 1
	image_alpha = .6
	alarm[2] = room_speed -10
	vermelhar(3)
	if global.defesa>=1 global.vida -= 21/ (global.defesa)
	else global.vida -= 21
	instance_create_layer(x,y,layer,obj_control_treme)
}













