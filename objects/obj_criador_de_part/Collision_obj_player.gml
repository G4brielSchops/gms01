/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.coins >= 200 and mouse_check_button_released(mb_right){
	global.habilidade2 = 1
	global.coins -= 200
	instance_destroy(id)
}