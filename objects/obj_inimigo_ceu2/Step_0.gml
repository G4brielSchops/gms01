/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if instance_exists(obj_player){
if global.hab2_knockback = 0{
if global.temp_pause1 = 0{
	
	
if instance_exists(obj_player){
if point_distance(x, y, obj_player.x, obj_player.y) < 650 and atirar = 0 and cd = 1{
	alarm[3] = room_speed + 40
	cd = 0
	image_blend=#FF3D32
	alarm[5] = 15
	
	
}
}
var _chao = place_meeting (x, y+1, obj_chao);
if !_chao velocidade_vertical += gravidade;
if place_meeting(x, y, obj_player) and colidir = 1 and instance_exists(obj_player) and obj_player.imune = 0{
	colidir = 0
	knockback = 2
}
if knockback = 0 and !place_meeting(x, y, obj_player) and instance_exists(obj_player){
	if point_distance(x, y, obj_player.x, obj_player.y) < 350 and instance_exists(obj_player) {
		if point_direction(x, y, obj_player.x, obj_player.y) > 90 and point_direction(x, y, obj_player.x, obj_player.y) < 270{
			left = 0
			right = 1
			if atirar = 0 and tomar_dano = 0 sprite_index = spr_inimigo_ceu1
		}
		else{
			left = 1
			right = 0
			if atirar = 0 and tomar_dano = 0 sprite_index = spr_inimigo_ceu12
		}
	}
	else{
		left = 0
		right = 0
	}
	
}

else if knockback = 1{
	if alarme1 = 1 {
		alarm[1] = room_speed / 23
		alarme1 = 0
	}
	if point_direction(x, y, obj_player.x, obj_player.y) > 90 and point_direction(x, y, obj_player.x, obj_player.y) < 270 and instance_exists(obj_player){
			left = 0
			right = 1
			velocidade = 11
		}
		else{
			left = 1
			right = 0
			velocidade = 11
		}
}
if  knockback = 2{
	if alarme1 = 1 {
	alarm[2] = room_speed / 10
	alarme1 = 0
	}
	if point_direction(x, y, obj_player.x, obj_player.y) > 90 and point_direction(x, y, obj_player.x, obj_player.y) < 270{
		left = 0
		right = 1
		velocidade = 15
	}
	else{
		left = 1
		right = 0
		velocidade = 15
	}

}
}
if life <= 0 instance_destroy(id)
}
if global.hab2_knockback = 1 {
	velocidade_horizontal= 8
}
if global.hab2_knockback = 2 {
	velocidade_horizontal= -8
}
velocidade_horizontal = (right - left) * velocidade
if global.temp_pause1 = 1{
	left = 0
	right = 0
}
if !instance_exists(obj_habilidade2){ 
	global.hab2_knockback = 0 
	a = 1
}


if  knockback = 3{
	if alarme1 = 1 {
	alarm[2] = room_speed
	alarme1 = 0
	}
	if point_direction(x, y, obj_player.x, obj_player.y) > 90 and point_direction(x, y, obj_player.x, obj_player.y) < 270{
		left = 0
		right = 1
		velocidade = 15
	}
	else{
		left = 1
		right = 0
		velocidade = 15
	}

}


if knockback = 4{
	if alarme1 = 1 {
		alarm[1] = room_speed
		alarme1 = 0
	}
	if point_direction(x, y, obj_player.x, obj_player.y) > 90 and point_direction(x, y, obj_player.x, obj_player.y) < 270 and instance_exists(obj_player){
			left = 0
			right = 1
			velocidade = 11
		}
		else{
			left = 1
			right = 0
			velocidade = 11
		}
}
























}else{
	left = 0
	right = 0
	sprite_index = spr_inimigo_ceu1
	velocidade_horizontal = 0
}













