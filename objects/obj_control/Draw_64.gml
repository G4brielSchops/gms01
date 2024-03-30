/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_sprite(spr_coin1, 4, 30, 135)
draw_set_font(fnt_moedas)
draw_set_color(c_yellow)
draw_text(45, 120,string(global.coins))
draw_set_color(-1)
draw_set_font(-1)
if global.pegar_moedas > 0{
	if de1 = 1{
	draw_set_color(c_yellow)
	draw_text(40, 145, "+" + string(global.pegar_moedas))
	draw_set_color(-1)
	if contador1 = 1 alarme1 = 1
	}
	if alarme1 =1{
		alarm[3] = room_speed + 20
		alarme1 = 0
		contador1 = 0
	}
}
draw_rectangle_color(98,78,262 + global.tamanho_barra_de_mana,87,  #66003D, #B2006A, #66003D, #B2006A,   0)
draw_healthbar(100, 79, 260 + global.tamanho_barra_de_mana, 86, global.mana, c_white, #0E0019, #8C0AFF, 180, true, true)

if instance_exists(obj_player){
draw_rectangle_color(96, 50, 470 + global.tamanho_barra_de_vida, 70, #FF002A, #4C000C, #FF002A, #4C000C, 0)
draw_healthbar(100, 52, 450 + global.tamanho_barra_de_vida, 67, global.vida, c_white, obj_player.cor_barra_de_vida, obj_player.cor_barra_de_vida, 180, true, true)
draw_rectangle_color(120, 52, 120.5, 67, #660D00, #660D00, #660D00,#660D00, 0)
draw_rectangle_color(210, 52, 210.5, 67, #660D00, #660D00, #660D00, #660D00, 0)
draw_rectangle_color(340, 52, 341, 67, #660D00,#660D00,#660D00, #660D00, 0)
draw_rectangle_color(430 + global.tamanho_barra_de_vida, 52, 430.5 + global.tamanho_barra_de_vida, 67, #E51C00,#E51C00, #E51C00,#E51C00, 0)
}

draw_rectangle_color(17, 38, 83,102, #000C4C, #26347F, #0A6566, #009AFF, 0)
draw_healthbar(20,40,80,100,global.xp,c_white,c_aqua,c_blue,3,1,1)








