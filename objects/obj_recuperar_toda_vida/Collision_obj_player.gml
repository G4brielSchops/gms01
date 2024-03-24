/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.coins >= 30 and mouse_check_button_released(mb_right){
repeat(100)
{
	instance_create_layer(x, y, layer, obj_particulas_de_vida1)
}
global.coins -= 30
instance_create_layer(x, y, layer, obj_control_treme)
instance_destroy(id)
}












