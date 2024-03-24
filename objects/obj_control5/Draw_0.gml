/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _tamanho_do_texto = string_length(texto)
if letra <= _tamanho_do_texto{
	palavra =string_copy(texto, 1, letra)	
	letra++
}
draw_set_color(c_white)
draw_set_font(fnt_font1)
draw_text(12128, 288, palavra)
draw_set_font(-1)
draw_set_color(-1)











