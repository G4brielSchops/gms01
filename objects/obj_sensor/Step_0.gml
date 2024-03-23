/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _player, _mb_right;

_player = place_meeting(x, y, obj_player)

_mb_right = mouse_check_button_released(mb_right)

if _player and _mb_right{
	var _tran = instance_create_layer(0, 0, layer, obj_control_transicao)
	_tran.destino = destino
	_tran.destino_x = destino_x
	_tran.destino_y = destino_y
}











