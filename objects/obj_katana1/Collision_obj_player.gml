/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.coins >= 300 and mouse_check_button_released(mb_right){
	global.espada_equipada = 1
	global.coins -= 300
	instance_destroy(id)
}






