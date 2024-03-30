/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.basico = 0{
var _tamanho_do_texto = string_length(texto)
if letra <= _tamanho_do_texto{
	palavra =string_copy(texto, 1, letra)	
	letra++
}
draw_set_color(c_white)
draw_set_font(fnt_font1)
draw_text(10024, 1248, palavra)
draw_set_font(-1)
draw_set_color(-1)
}











