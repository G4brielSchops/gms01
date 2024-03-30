/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if imune = 0{
	imune = 1
	image_alpha = .6
	alarm[2] = room_speed
	vermelhar(3)
	if global.defesa>=1 global.vida -= 35/ (global.defesa)
	else global.vida -= 35
	instance_create_layer(x,y,layer,obj_control_treme)
}














