/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.temp_pause1 = 1{
	image_index = 2
}
if !place_meeting(x, y+ 1, obj_chao) vspeed += .15
if place_meeting(x, y + 1, obj_chao){
	vspeed = 0
	hspeed = 0
}
if morte = 1 and global.temp_pause1 = 0 instance_destroy(id)











