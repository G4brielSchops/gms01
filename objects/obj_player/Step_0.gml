/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#region basic
if global.parado = 0{
var _chao = place_meeting (x, y+1, obj_chao);
var _dash = keyboard_check_pressed(ord("E"))
var _dash2 = mouse_check_button_pressed(mb_right)
var _left, _right, _jump;
_left = keyboard_check (inputs.left) or keyboard_check(vk_left);
_right = keyboard_check (inputs.right) or keyboard_check(vk_right);
_jump = keyboard_check_pressed(inputs.jump);
velocidade_horizontal = (_right - _left) * velocidade
if velocidade_horizontal > 0 and _chao{
	if usando_dash = 0 sprite_index = spr_player_andando
	left = 1
	right = 0
}
if velocidade_horizontal < 0 and _chao {
	if usando_dash = 0 sprite_index = spr_player_andando2
	right = 1
	left = 0
}
if velocidade_horizontal = 0 and _chao {
	if left = 1 and usando_dash = 0 sprite_index = spr_player_parado2
	if right = 1 and usando_dash = 0 sprite_index = spr_player_parado
	if left = 0 and right = 0 and usando_dash = 0 sprite_index = spr_player_parado2
	
}
if velocidade_horizontal > 0{
	repeat(6){
		left = 1
		right = 0
		global.left = true
		global.tamanho = irandom_range(0, 2)
	}
}
if velocidade_horizontal < 0{
	repeat(6){
		right = 1
		left = 0
		global.right = true
		global.tamanho = irandom_range(0, 2)
	}
}
//Pulando
if _chao and criar_bola = 1 {
	repeat 6 {
		instance_create_layer(x, y+16, layer_create(0, "Instances_1"), obj_particulas_queda)

	}
	criar_bola = 0
}
if !_chao and pulo1 = 1 and global.pulo_duplo == 1 and pulo2 = 0 and _jump{
	velocidade_vertical = - (velocidade_pulo + 2.5)
	pulo2 = 1
	pulos_parede += 1
	instance_create_layer(x,y,layer,obj_asa)
	alarm[4] = room_speed + 10
}
if (_chao)
{
pulos = 1
pulo1 = 0
pulo2 = 0
pulos_parede = 0
criar_bola = 0
if (_jump and pulos = 1)
{	
instance_create_layer(x, y+10, layer, obj_fumaca_andando)
pulando = 1
pulos = 0
pulos_parede += 1
pulo1 = 1
criar_bola = 1
pulo2 = 0
velocidade_vertical = - velocidade_pulo;
}
}
else{
if(_jump and pulando = 1 and pulos =1){
	velocidade_vertical = - velocidade_pulo2
	pulos = 0
	pulo1 = 1
	pulos_parede += 1
	criar_bola = 1
	instance_create_layer(x, y+10, layer, obj_fumaca_andando)
}
}

if velocidade_vertical <= 0 and !_chao {
	if left = 1 and usando_dash = 0 sprite_index = spr_player_pulo 
	if right = 1 and usando_dash = 0 sprite_index = spr_player_pulo2

	
}
if velocidade_vertical > 0 and !_chao {
	if left = 1 and usando_dash = 0 sprite_index = spr_player_caindo
	if right = 1 and usando_dash = 0  sprite_index = spr_player_caindo2
	if left = 0 and right = 0 and usando_dash = 0 sprite_index = spr_player_caindo2
}



if !_chao {
	criar_bola = 1
}
if _dash == true and uso_dash = 0{
	velocidade =60
	uso_dash = 1
	alarm[1] = 9
	criar_part = 1
	alarm[0] = room_speed * 2.4
	imune_boss = 1
	alarm[3] = 6
	usando_dash = 1
	global.dash = 1
	image_blend= c_black
	image_alpha = 0.05
	imune = 1
	if left = 1 {
		sprite_index = spr_player_dash1
		part_particles_create(global.P_System, x, y, global.part_dash, 21);
	}
	if right = 1 {
		sprite_index = spr_player_dash2
	part_particles_create(global.P_System, x, y, global.part_dash3, 21);
	}
}
if criar_part = 1{
	part_particles_create(global.P_System, x, y, global.part_dash2, 3);
}
if _dash2 and uso_dash2 = 0{
	velocidade = 40
	alarm[5] = 40
	alarm[6] = 6
	uso_dash2 = 1
	usando_dash = 1
	if left = 1 {
		sprite_index = spr_player_dash1		
		part_particles_create(global.P_System, x, y, global.part_dash4, 15);
	}
	if right = 1 {
		sprite_index = spr_player_dash2		
		part_particles_create(global.P_System, x, y, global.part_dash5, 15);
	}
}
}
if global.parado = 1{
	velocidade_horizontal = 0
	image_blend = c_black
	part_particles_create(global.P_System, x, y, global.part_recuperar_vida1, 5)
	if left = 1 sprite_index = spr_player_parado2
	if right = 1 sprite_index = spr_player_parado
	if left = 0 and right = 0 sprite_index = spr_player_parado2
}

velocidade_vertical += gravidade;






if place_meeting(x, y, obj_controle_digito) and criar_control = 1{
	instance_create_layer(20,20,layer, obj_control3)
	part_particles_create(global.P_System, obj_controle_digito.x-450, obj_controle_digito.y, global.part_life2, 100)
	criar_control = 0
}
if place_meeting(x, y, obj_controle_digito) and criar_control2 = 1{
	instance_create_layer(201,204,layer, obj_control_vida)
	criar_control2 = 0
}
#endregion

#region colisoes
if place_meeting(x, y+1, obj_chao_fogo) and imune_inimigo = 0 {
	global.vida -= 0.1 / (1+global.defesa)
	lava_damage = 1
	na_lava  =1
}else if na_lava = 1{ 
	lava_damage = 0
	na_lava = 0
}
if lava_damage = 1 and na_lava = 1{
	image_blend = c_red
}if lava_damage = 0 and na_lava = 0 {
	image_blend = cor_player
	na_lava = 2
}


if place_meeting(x, y, obj_controle_digito2) and criar_control4 = 1{
	instance_create_layer(201,204,layer, obj_control_xp)
	part_particles_create(global.P_System, obj_controle_digito2.x-500, obj_controle_digito2.y+20, global.part_xp2, 100)
	criar_control4 = 0
}
if place_meeting(x, y, obj_controle_digito3) and criar_control5 = 1{
	instance_create_layer(201,204,layer, obj_control5)
	global.atacar_espada = 1
	criar_control5 = 0
}
if place_meeting(x, y, obj_controle_digito4) and criar_control6 = 1{
	instance_create_layer(201,204,layer, obj_control_mana)
	part_particles_create(global.P_System, obj_controle_digito4.x-550, obj_controle_digito4.y+50, global.part_mana2, 100)
	criar_control6 = 0
	global.usar_habs1 = 1
}
if place_meeting(x, y, obj_controle_digito5) and criar_control7 = 1{
	instance_create_layer(201,204,layer, obj_control_coins)
	part_particles_create(global.P_System, obj_controle_digito5.x-500, obj_controle_digito5.y+20, global.part_coins1, 100)
	criar_control7 = 0
}
#endregion

#region ataque
var _ataque = mouse_check_button_pressed(mb_left)
		if _ataque and cc = 1{
		if keyboard_check(ord("W")) and cc =1{
			instance_create_layer(x, y - 50, layer, obj_ataque1)
			obj_ataque1.sprite_index = spr_ataque1
			obj_ataque1.image_angle = 90
			global.ataque1 = 1
			alarm[5] = 15
			cc = 0
			part_particles_create(global.P_System, x, y - 50, global.part_ataque03, 3);
		}
		if keyboard_check(ord("S")) and !_chao and cc =1{
			instance_create_layer(x, y + 50, layer, obj_ataque1)
			if velocidade_vertical >0 velocidade_vertical = -1
			if velocidade_vertical <0 velocidade_vertical -=1
			obj_ataque1.sprite_index = spr_ataque1
			obj_ataque1.image_angle = 270
			global.ataque1 = 1
			alarm[5] = 15
			cc = 0
			part_particles_create(global.P_System, x, y + 50, global.part_ataque04, 3);
		}
		if left = 1 and cc =1{
			instance_create_layer(x + 50, y, layer, obj_ataque1)
			obj_ataque1.sprite_index = spr_ataque1
			global.ataque1 = 1
			alarm[5] = 15
			cc = 0
			part_particles_create(global.P_System, x+50, y, global.part_ataque01, 3);
		}
		if right = 1 and cc = 1{
			instance_create_layer(x - 50, y, layer, obj_ataque1)
			obj_ataque1.sprite_index = spr_ataque2
			global.ataque1 = 1
			alarm[5] = 15
			cc = 0
			part_particles_create(global.P_System, x-50, y, global.part_ataque02, 3);			
		}

	}





#endregion
	
#region up
if global.xp >= 100{
	global.nvl++
	global.xp = 0
	global.vida = 100
	global.defesa += .16
	global.tamanho_barra_de_vida += 3
	global.diminuixp +=.75
	upando = 1
	instance_create_layer(x, y, layer_create(-1, "Instances_1"), obj_lvl_up)
	imune =1
	image_alpha = .5
	alarm[1] = room_speed *2
	alarm[11] = room_speed *2
}

#endregion

#region habilidades
var _hab1 = keyboard_check_pressed(ord("X"))
if _hab1 and global.mana >= 10 and global.usar_habs1 = 1 and cooldown2 = 0 and global.habilidade2 = 1{
	global.mana -= 10 - global.mana_reduzir
	cooldown2 = 1	
	if left = 1{
		part_particles_create(global.P_System, x, y, global.part_vento2, 50)
		instance_create_layer(x, y, layer, obj_habilidade2)
		obj_habilidade2.speed = 24
		obj_habilidade2.direction = 0
		obj_habilidade2.image_yscale = 3
	}
	if right = 1{
		part_particles_create(global.P_System, x, y, global.part_vento3, 50)
		instance_create_layer(x, y, layer, obj_habilidade2)
		obj_habilidade2.speed = 24
		obj_habilidade2.direction = 180
		obj_habilidade2.image_yscale = 3
	}
	alarm[9] = room_speed * 3
}
#endregion

#region defesa
if global.cor_up = 1 and mudar_cor1 = 1{
	cor_player = #0054A6
	global.defesa += 1
	mudar_cor1 = 0
	image_blend = cor_player
}
#endregion

#region zoom
if place_meeting(x, y, obj_zoom){
	camera_set_view_size(view_camera, 683, 384)
}
if !place_meeting(x, y, obj_zoom){
	camera_set_view_size(view_camera, 1366, 768)
}
#endregion

#region boss magma
if place_meeting(x, y, obj_verificar_boss1) and mover_chao_1 = 1{
	obj_chao_boss1.y -= 700
	mover_chao_1 = 0
}
#endregion

#region morte/reviver
if global.vida < 0 and global.reviver = 0 {
	instance_destroy(id)
}
if global.vida < 0 and global.reviver > 0 {
	global.reviver -= 1
	instance_create_layer(x, y, layer_create(-1, "Instances_1"), obj_revivendo)
	imune = 1
	para_reviver = 1
	velocidade_vertical = -10
	hspeed = -15
	alarm[2] = 15
	revivendo = 1
	part_particles_create(global.P_System, x, y, global.part_death, 150);
	image_alpha = .1
	alarm[1] = room_speed * 5
	global.vida = 100
}
if global.reviver >= 1{
	cor_barra_de_vida = #CCBE01
}
if global.reviver = 0{
	cor_barra_de_vida = #7F0015
}
#endregion

