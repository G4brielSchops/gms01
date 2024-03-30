/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if a = 1{
	image_alpha +=.1
}
if image_alpha = 1{
	image_alpha -= .01
	a =0
}
if a = 0 image_alpha -= .01
if image_alpha = 0 instance_destroy()
x = obj_player.x
y = obj_player.y













