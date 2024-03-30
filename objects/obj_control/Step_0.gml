/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if instance_exists(obj_player) and criar = 1{
with obj_player{
if velocidade_horizontal > 0 and place_meeting(x, y + 1, obj_chao){
	instance_create_layer(x-12,y+32, layer, obj_fumaca_andando)
}
}
with obj_player{
if velocidade_horizontal < 0 and place_meeting(x, y + 1, obj_chao){
	instance_create_layer(x+12, y+32, layer, obj_fumaca_andando)
}
}
criar = 0
alarm[0]=3
}
if criar2 = 1{
with obj_player {
	if !place_meeting(x, y + 1, obj_chao){
		instance_create_layer(x, y, layer, obj_fumaca_andando2)
		with obj_control{
			if criar2_ = 0{
				alarm[1] = 9
				criar2_ = 1
			}
		}
	}
}
}
with obj_player {
	if place_meeting(x, y + 1, obj_chao){
		with obj_control{
		criar2 = 1
		criar2_ = 0
		}
	}
}



var _recuperar_vida = keyboard_check(ord("Q"))
if _recuperar_vida and recuperar = 1{
	pode_restaurar = 1
	global.parado = 1
	if pode_restaurar = 1{
		gastar_mana =1
		pode_restaurar = 0
		recuperar = 0
		alarm[6] = room_speed
	}
}

if gastar_mana = 1{
	global.vida += .5
	global.mana -= .5
	parar_mana +=.5
}
if global.vida >= 100 or keyboard_check_released(ord("Q")) or global.mana <=0{
	gastar_mana = 0
	parar_mana = 0
	global.parado = 0
	obj_player.image_blend = c_white
}







