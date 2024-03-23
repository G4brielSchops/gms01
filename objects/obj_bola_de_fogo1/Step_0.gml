/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.temp_pause1 = 0{
	speed -= 0.4
	if speed < 0{
		image_angle = 180
	}
	if speed > 0{
		global.directionp1l = 1
		instance_create_layer(x, y, layer, obj_particulas_bola_de_fogo1)
		instance_create_layer(x, y, layer, obj_particulas_bola_de_fogo2)
	}
	else if speed < 0{
		global.directionp2l = 1
		instance_create_layer(x, y, layer, obj_particulas_bola_de_fogo1)
		instance_create_layer(x, y, layer, obj_particulas_bola_de_fogo2)
	}
}
if global.temp_pause1 = 1{
	speed = 0
	if voltar_velocidade = 1{
		voltar_velocidade = 0
		alarm[1] = room_speed
	}
	alarm[0] = room_speed
}











