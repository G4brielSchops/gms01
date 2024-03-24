/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.coins >= 30 and mouse_check_button_released(mb_right){
repeat(50)
{
	instance_create_layer(x, y, layer, obj_part_mana1)
}
global.coins -= 30
instance_create_layer(x, y, layer, obj_control_treme)
instance_destroy(id)
}













