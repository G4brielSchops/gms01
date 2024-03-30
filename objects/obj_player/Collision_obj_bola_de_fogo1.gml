/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if imune = 0{
	instance_destroy(other)
	imune= 1
	image_alpha = .6
	alarm[2] = room_speed
	vermelhar(3)
	global.vida -= 10/ (1+global.defesa)
	instance_create_layer(x,y,layer,obj_control_treme)
}











