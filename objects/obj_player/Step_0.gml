/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#region basic
var _chao = place_meeting (x, y+1, obj_chao);
var _dash = keyboard_check_pressed(ord("Z"))
var _left, _right, _jump;
_left = keyboard_check (inputs.left) or keyboard_check(vk_left);
_right = keyboard_check (inputs.right) or keyboard_check(vk_right);
_jump = keyboard_check (inputs.jump) or keyboard_check(ord("W")) or keyboard_check(vk_up);
velocidade_horizontal = (_right - _left) * velocidade
if velocidade_horizontal > 0 and _chao sprite_index = spr_player_andando
if velocidade_horizontal < 0 and _chao sprite_index = spr_player_andando2
if velocidade_horizontal = 0 and _chao sprite_index = spr_player_parado
if velocidade_horizontal > 0{
	repeat(6){
		left = 1
		right = 0
		global.left = true
		global.tamanho = irandom_range(0, 2)
		instance_create_layer(x, y, layer, obj_particulas_player)
	}
}
if velocidade_horizontal < 0{
	repeat(6){
		right = 1
		left = 0
		global.right = true
		global.tamanho = irandom_range(0, 2)
		instance_create_layer(x, y, layer, obj_particulas_player)
	}
}
//Pulando
if (_chao)
{
pulos = 1
if (_jump)
{	
pulando = 1
velocidade_vertical = - velocidade_pulo;
sprite_index = spr_player_pulo
}
}
else
{
if(_jump and pulando = 1 and pulos =1){
	velocidade_vertical = - velocidade_pulo2
	pulos = 0
}
velocidade_vertical += gravidade;
if !_chao sprite_index = spr_player_pulo
}


if _dash == true and uso_dash = 0 and usar_dash = 1{
	velocidade = 60
	uso_dash = 1
	alarm[1] = 10
	alarm[0] = 600
	image_alpha = 0.1
	imune = 1
	part_particles_create(global.P_System, x, y, global.part_dash, 75);
}

if place_meeting(x, y, obj_controle_digito) and criar_control = 1{
	instance_create_layer(20,20,layer, obj_control3)
	part_particles_create(global.P_System, obj_controle_digito.x-450, obj_controle_digito.y, global.part_life2, 100)
	criar_control = 0
}
if place_meeting(x, y, obj_controle_digito) and criar_control2 = 1{
	instance_create_layer(201,204,layer, obj_control)
	criar_control2 = 0
}
#endregion

#region colisoes
if place_meeting(x, y+1, obj_chao_fogo) and imune = 0 global.vida -= 0.1 / (1+global.defesa)
if global.vida < 0 and reviver = 0 {
	instance_destroy(id)
}

if place_meeting(x, y, obj_controle_digito2) and criar_control4 = 1{
	instance_create_layer(201,204,layer, obj_control4)
	part_particles_create(global.P_System, obj_controle_digito2.x-500, obj_controle_digito2.y+20, global.part_xp2, 100)
	criar_control4 = 0
}
if place_meeting(x, y, obj_controle_digito3) and criar_control5 = 1{
	instance_create_layer(201,204,layer, obj_control5)
	global.atacar_espada = 1
	criar_control5 = 0
}
if place_meeting(x, y, obj_controle_digito4) and criar_control6 = 1{
	instance_create_layer(201,204,layer, obj_control6)
	part_particles_create(global.P_System, obj_controle_digito4.x-550, obj_controle_digito4.y+50, global.part_mana2, 100)
	criar_control6 = 0
	global.usar_habs1 = 1
	global.basico = 1
}
if place_meeting(x, y, obj_controle_digito5) and criar_control7 = 1{
	instance_create_layer(201,204,layer, obj_control7)
	part_particles_create(global.P_System, obj_controle_digito5.x-500, obj_controle_digito5.y+20, global.part_coins1, 100)
	criar_control7 = 0
}
#endregion

#region ataque
if global.atacar_espada = 1 {
	var _ataque = mouse_check_button_pressed(mb_left)
	if segundo_ataque = 1  and last_atack = 0{
		if _ataque {
			if left = 1{
				instance_create_layer(x + 50, y- 25, layer, obj_ataque1)
				obj_ataque1.sprite_index = spr_ataque2
				obj_ataque1.image_angle = 180
				segundo_ataque = 0
				terceiro_ataque = 1
				last_atack = 0
				global.ataque1 = 2
				alarm[5] = room_speed / 50
			}
		}	
	}
	if terceiro_ataque = 1 and last_atack = 1{
		if _ataque {
			if left = 1{
				instance_create_layer(x + 52, y- 60, layer, obj_ataque1)
				obj_ataque1.sprite_index = spr_ataque1
				obj_ataque1.image_xscale = 1.8
				obj_ataque1.image_yscale = 1.8
				obj_ataque1.image_blend = c_red
				instance_create_layer(x,y,layer,obj_control_treme)
				segundo_ataque = 0
				terceiro_ataque = 0
				alarm[6] = room_speed * cooldown_atack
				global.ataque1 = 3
				if global.temp_pause1= 0 vermelhar(3)
			}
		}	
	}
	if segundo_ataque = 1  and last_atack = 0{
		if _ataque {
			if right = 1{
				instance_create_layer(x - 50, y- 25, layer, obj_ataque1)
				obj_ataque1.sprite_index = spr_ataque1
				obj_ataque1.image_angle = 180
				segundo_ataque = 0
				terceiro_ataque = 1
				last_atack = 0
				global.ataque1 = 2
				alarm[5] = room_speed / 50
			}
		}	
	}
	if terceiro_ataque = 1 and last_atack = 1{
		if _ataque {
			if right = 1{
				instance_create_layer(x - 52, y- 60, layer, obj_ataque1)
				obj_ataque1.sprite_index = spr_ataque2
				obj_ataque1.image_xscale = 1.8
				obj_ataque1.image_yscale = 1.8
				obj_ataque1.image_blend = c_red
				instance_create_layer(x,y,layer,obj_control_treme)
				segundo_ataque = 0
				terceiro_ataque = 0
				alarm[6] = room_speed * cooldown_atack
				if global.temp_pause1= 0 vermelhar(3)
				global.ataque1 = 3
			}
		}	
	}
	if _ataque and segundo_ataque = 0 and terceiro_ataque = 0  and last_atack = 0{
		if left = 1{
			alarm[4] = room_speed
			instance_create_layer(x + 50, y- 25, layer, obj_ataque1)
			obj_ataque1.sprite_index = spr_ataque1
			segundo_ataque = 1
			terceiro_ataque = 0
			global.ataque1 = 1

		}
		if right = 1{
			instance_create_layer(x - 50, y- 25, layer, obj_ataque1)
			obj_ataque1.sprite_index = spr_ataque2
			segundo_ataque = 1
			terceiro_ataque = 0
			global.ataque1 = 1
			alarm[4] = room_speed
		}
	}
}
#endregion
	
#region up
if global.xp >= 100{
	global.nvl++
	global.xp = 0
	global.vida = 100
	global.defesa += .3
	global.tamanho_barra_de_vida += 5
	global.diminuixp +=.55
	instance_create_layer(x, y, layer_create(-1, "Instances_1"), obj_lvl_up)
	imune =1
	image_alpha = .5
	alarm[1] = room_speed *2
}

#endregion

#region habilidades
var _hab1 = keyboard_check_pressed(ord("C"))
if _hab1 and global.mana >= 25 and global.usar_habs1 = 1 and cooldown1 = 0{
	global.temp_pause1 = 1
	part_particles_create(global.P_System, x, y, global.part_tempo_parado, 150)
	alarm[7] = room_speed * 6.5
	global.mana -= 25
	cooldown1 = 1
	imune = 1
	image_blend = c_aqua
	cooldown_atack = 1
	velocidade = 10.6
	alarm[8] = room_speed * 20
}
#endregion











