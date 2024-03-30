/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _chao = place_meeting (x, y+1, obj_chao);
if !_chao velocidade_vertical += gravidade;
if morrer = 0{
if point_distance(x, y, obj_player.x, obj_player.y) <900 and instance_exists(obj_player) {
	
	draw_vida = 1
	
	if point_direction(x, y, obj_player.x, obj_player.y) > 90 and point_direction(x, y, obj_player.x, obj_player.y) < 270{
		left = 1
		right = 0
	}
	else{
		left = 0
		right = 1
	}
	if hab1 = 1{
	rapido = 0
	if left = 1{
		var _y1 = 0
		instance_create_layer(x, y, layer, obj_control_treme)
		repeat 6{
			instance_create_layer(x, y - 50 + _y1, "Instances_1", obj_bola_de_fogo_boss1)
			with obj_bola_de_fogo_boss1{
				direction = 180
				image_xscale = 1
				image_yscale = 1
				image_angle = 180
			}
			_y1 += 20
		}
	}
	if right = 1{
		var _y1 = 0
		instance_create_layer(x, y, layer, obj_control_treme)
		repeat 6{
			instance_create_layer(x, y - 50 + _y1, "Instances_1", obj_bola_de_fogo_boss1)
			with obj_bola_de_fogo_boss1{
				direction = 0
				image_xscale = 1
				image_yscale = 1
				image_angle = 0
			}
			_y1 += 20
		}
	}
	hab1 = 0
	}
	if hab2 = 1 and criar = 1{
		global.dar_xp = 0
		instance_create_layer(2464, 928, layer, obj_inimigo1)
		instance_create_layer(2528, 928, layer, obj_inimigo1)
		instance_create_layer(3936, 928, layer, obj_inimigo1)
		instance_create_layer(3872, 928, layer, obj_inimigo1)
		instance_create_layer(x, y, layer, obj_control_treme)
		hab2 = 0
		criar = 0
		pode_usar_hab = 0
		alarm[5] = room_speed * 2
		alarm[6] = room_speed * 10
	}
	if hab2 =1 and criar = 0{
		alarm[0] = 1
		hab2 = 0
	}
	if hab3 = 1{
		rapido = 1
		var _x1 = 0
		repeat 2 {
		instance_create_layer(obj_player.x- 60 + _x1, obj_player.y - 150, "Instances_1", obj_bola_de_fogo_boss1)
		with obj_bola_de_fogo_boss1{
			image_xscale = 4
			image_yscale = 4
			direction = point_direction(x, y, obj_player.x, obj_player.y)
			image_angle =point_direction(x, y, obj_player.x, obj_player.y)
		}
		_x1 += 160
		}
		hab3 = 0
	}
	if hab4 = 1{
		var _x2 = random_range(2400, 4000)
		if mover3 = 1{
		obj_chao_boss2.x -= 600
		obj_chao_boss3.x += 600
		mover3 = 0
		}
		alarm[7]=room_speed * 3
		repeat 13 {
			instance_create_layer(_x2, 576, "Instances_1", obj_bola_de_fogo_boss1)
			_x2 = random_range(2400, 4000)
			with obj_bola_de_fogo_boss1 {
				image_xscale = 1.5
				image_yscale = 1.5
				direction = 270
				image_angle = 270
			}
		}
		
		hab4 = 0
	}
}
else{
	draw_vida = 0
	left = 0
	right = 0
	hab1 = 0
	hab2 = 0
	hab3 = 0
	hab4 = 0
}
velocidade_horizontal = (right - left) * velocidade

if life <= 35 and criar_pet = 1{
	criar_pet = 0
	instance_create_layer(x, y, "Instances_1", obj_pet_boss_magma)
}

}
if life <= 0{
	left = 0
	right = 0
	velocidade_horizontal = 0
	morrer = 1

}
if morrer = 1{
	image_alpha -= .01
	if image_alpha <= 0 instance_destroy(id)
}











// 764








