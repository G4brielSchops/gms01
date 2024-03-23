/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_font(fnt_font4);
draw_set_color(c_white);
var _dist = 55;
var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();
var _x1 = _gui_largura/2
var _y1 = _gui_altura/2
var _m_x = device_mouse_x_to_gui(0)
var _m_y = device_mouse_y_to_gui(0)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

for (var _i = 0; _i < op_max; _i++){
	var _y2 = _y1 + (_dist * _i)
	var _string_w = string_width(opcoes[_i])
	var _string_h = string_height(opcoes[_i])

	if point_in_rectangle(_m_x, _m_y, _x1 - _string_w /2, _y2 - _string_h/2, _x1 + _string_w /2, _y2 + _string_h / 2){
		draw_set_color(c_red)
		if mouse_check_button_released(mb_left) and _i = 0{
			room_goto(rm_tutorial)
		}
		if mouse_check_button_released(mb_left) and _i = 3{
			game_end()
		}
	}else draw_set_color(c_white)





	draw_text(_x1, _y2, opcoes[_i])
}


draw_set_halign(-1)
draw_set_valign(-1)











