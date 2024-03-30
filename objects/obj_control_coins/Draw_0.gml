/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if room = rm_fase1{
var _tamanho_do_texto = string_length(texto)
if letra <= _tamanho_do_texto{
	palavra =string_copy(texto, 1, letra)	
	letra++
}
draw_set_color(c_white)
draw_text(1568, 672, palavra)
draw_set_color(-1)
}










