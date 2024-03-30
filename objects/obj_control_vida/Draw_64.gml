/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if instance_exists(obj_player){
draw_rectangle_color(96, 50, 470 + global.tamanho_barra_de_vida, 70, #FF002A, #4C000C, #FF002A, #4C000C, 0)
draw_healthbar(100, 52, 450 + global.tamanho_barra_de_vida, 67, global.vida, c_white, obj_player.cor_barra_de_vida, obj_player.cor_barra_de_vida, 180, true, true)
draw_rectangle_color(120, 52, 120.5, 67, #660D00, #660D00, #660D00,#660D00, 0)
draw_rectangle_color(210, 52, 210.5, 67, #660D00, #660D00, #660D00, #660D00, 0)
draw_rectangle_color(340, 52, 341, 67, #660D00,#660D00,#660D00, #660D00, 0)
draw_rectangle_color(430 + global.tamanho_barra_de_vida, 52, 430.5 + global.tamanho_barra_de_vida, 67, #E51C00,#E51C00, #E51C00,#E51C00, 0)
}











