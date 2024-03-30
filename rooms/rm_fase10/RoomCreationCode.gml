#region particulas
global.part_dash2 = part_type_create();
part_type_shape(global.part_dash2, pt_shape_flare);
part_type_size(global.part_dash2, 0.03, 0.07, 0, 0.85);
part_type_color1(global.part_dash2, c_black);
part_type_alpha3(global.part_dash2, 0.5, 0.8, 0);
part_type_speed(global.part_dash2, 1, 2, 0, 0);
part_type_direction(global.part_dash2, 0, 359, 0, 20);
part_type_blend(global.part_dash2, false);
part_type_life(global.part_dash2, 30, 45);

global.part_olhos = part_type_create();
part_type_shape(global.part_olhos, pt_shape_flare);
part_type_size(global.part_olhos, 0.008, 0.048, 0, 0.5);
part_type_color1(global.part_olhos, c_black);
part_type_alpha3(global.part_olhos, 0.5, 0.8, 0);
part_type_speed(global.part_olhos, 0, 0, 0, 0);
part_type_direction(global.part_olhos, 0, 359, 0, 20);
part_type_blend(global.part_olhos, false);
part_type_life(global.part_olhos, 10, 15);

global.part_olhos2 = part_type_create();
part_type_shape(global.part_olhos2, pt_shape_flare);
part_type_size(global.part_olhos2, 0.008, 0.048, 0, 0.5);
part_type_color1(global.part_olhos2, #330028);
part_type_alpha3(global.part_olhos2, 0.5, 0.8, 0);
part_type_speed(global.part_olhos2, 0, 0, 0, 0);
part_type_direction(global.part_olhos2, 0, 359, 0, 20);
part_type_blend(global.part_olhos2, false);
part_type_life(global.part_olhos2, 10, 15);

global.part_death = part_type_create();
part_type_shape(global.part_death, pt_shape_flare);
part_type_size(global.part_death, 0.01, 0.05, 0, 0.5);
part_type_color1(global.part_death, c_silver);
part_type_alpha3(global.part_death, 0.5, 1, 0);
part_type_speed(global.part_death, 13, 17, -0.10, 0);
part_type_direction(global.part_death, 0, 359, 0, 20);
part_type_blend(global.part_death, false);
part_type_life(global.part_death, 35, 70);

global.part_caverna_particulas1 = part_type_create();
part_type_shape(global.part_caverna_particulas1, pt_shape_flare);
part_type_size(global.part_caverna_particulas1, 0.5, 0.5, 0, 0);
part_type_color1(global.part_caverna_particulas1, c_silver);
part_type_alpha3(global.part_caverna_particulas1, 1, 1, 1);
part_type_speed(global.part_caverna_particulas1, 15, 17.5, -0.03, 0);
part_type_direction(global.part_caverna_particulas1, 270, 270, 0, 0);
part_type_blend(global.part_caverna_particulas1, false);
part_type_life(global.part_caverna_particulas1, 180, 180);

global.part_dash = part_type_create();
part_type_shape(global.part_dash, pt_shape_flare);
part_type_size(global.part_dash, 0.01, 0.05, 0, 0.5);
part_type_color1(global.part_dash, c_black);
part_type_alpha3(global.part_dash, 1, 1, 0.4);
part_type_speed(global.part_dash,18, 21, -0.4, 1.1);
part_type_direction(global.part_dash,180, 180, 0, 20);
part_type_blend(global.part_dash, false);
part_type_life(global.part_dash, 30, 35);

global.part_lava = part_type_create();
part_type_shape(global.part_lava, pt_shape_flare);
part_type_size(global.part_lava, 0.01, 0.05, 0, 0.5);
part_type_color3(global.part_lava, c_orange, c_yellow, c_red);
part_type_alpha3(global.part_lava, 1, 1, 0.4);
part_type_speed(global.part_lava, 9, 12, -0.2, -1);
part_type_direction(global.part_lava, 45, 135, 0, 20);
part_type_blend(global.part_lava, false);
part_type_life(global.part_lava, 40, 50);

global.part_life2 = part_type_create();
part_type_shape(global.part_life2, pt_shape_flare);
part_type_size(global.part_life2, 0.005, 0.03, 0, 0.3);
part_type_color3(global.part_life2, c_purple, c_olive, c_fuchsia);
part_type_alpha3(global.part_life2, 1, 1, 0.4);
part_type_speed(global.part_life2, 18, 23, -0.3, -1);
part_type_direction(global.part_life2, 225, 315, 0, 20);
part_type_blend(global.part_life2, false);
part_type_life(global.part_life2, 70, 90);

global.part_xp2 = part_type_create();
part_type_shape(global.part_xp2, pt_shape_flare);
part_type_size(global.part_xp2, 0.005, 0.03, 0, 0.3);
part_type_color3(global.part_xp2, c_aqua, c_blue, c_white);
part_type_alpha3(global.part_xp2, 1, 1, 0.4);
part_type_speed(global.part_xp2, 18, 23, -0.3, -1);
part_type_direction(global.part_xp2, 225, 315, 0, 20);
part_type_blend(global.part_xp2, false);
part_type_life(global.part_xp2, 70, 90);

global.part_xp1 = part_type_create();
part_type_shape(global.part_xp1, pt_shape_flare);
part_type_size(global.part_xp1, 0.008, 0.047, 0, 0.47);
part_type_color2(global.part_xp1, c_aqua, c_blue);
part_type_alpha3(global.part_xp1, 0.7, 1, 0.4);
part_type_speed(global.part_xp1, 2, 3, -0.05, -1);
part_type_direction(global.part_xp1, 0, 359, 0, 20);
part_type_blend(global.part_xp1, false);
part_type_life(global.part_xp1, 20, 25);

global.part_explosao_bola_de_fogo1 = part_type_create();
part_type_shape(global.part_explosao_bola_de_fogo1, pt_shape_flare);
part_type_size(global.part_explosao_bola_de_fogo1, 0.005, 0.019, 0, 0.19);
part_type_color2(global.part_explosao_bola_de_fogo1, c_yellow, c_orange);
part_type_alpha3(global.part_explosao_bola_de_fogo1, 0.7, 1, 0.4);
part_type_speed(global.part_explosao_bola_de_fogo1, 20, 21, -0.4, -1);
part_type_direction(global.part_explosao_bola_de_fogo1, 0, 359, 0, 20);
part_type_blend(global.part_explosao_bola_de_fogo1, false);
part_type_life(global.part_explosao_bola_de_fogo1, 9, 13);

global.part_tempo_voltando = part_type_create();
part_type_shape(global.part_tempo_voltando, pt_shape_flare);
part_type_size(global.part_tempo_voltando, 0.005, 0.019, 0, 0.19);
part_type_color3(global.part_tempo_voltando, c_white, c_aqua, c_green);
part_type_alpha3(global.part_tempo_voltando, 0.7, 1, 0.4);
part_type_speed(global.part_tempo_voltando, 31, 37, -0.05, -1);
part_type_direction(global.part_tempo_voltando, 0, 359, 0, 20);
part_type_blend(global.part_tempo_voltando, false);
part_type_life(global.part_tempo_voltando, 180, 210);

global.part_tempo_parado = part_type_create();
part_type_shape(global.part_tempo_parado, pt_shape_flare);
part_type_size(global.part_tempo_parado, 0.005, 0.019, 0, 0.19);
part_type_color2(global.part_tempo_parado, c_blue, c_aqua);
part_type_alpha3(global.part_tempo_parado, 0.7, 1, 0.4);
part_type_speed(global.part_tempo_parado, 20, 21, -0.2, -1);
part_type_direction(global.part_tempo_parado, 0, 359, 0, 20);
part_type_blend(global.part_tempo_parado, false);
part_type_life(global.part_tempo_parado, 180, 210);

global.part_mana2 = part_type_create();
part_type_shape(global.part_mana2, pt_shape_flare);
part_type_size(global.part_mana2, 0.005, 0.03, 0, 0.3);
part_type_color3(global.part_mana2, c_maroon, c_red, c_orange);
part_type_alpha3(global.part_mana2, 1, 1, 0.4);
part_type_speed(global.part_mana2, 18, 23, -0.3, -1);
part_type_direction(global.part_mana2, 225, 315, 0, 20);
part_type_blend(global.part_mana2, false);
part_type_life(global.part_mana2, 70, 90);

global.part_vento2 = part_type_create();
part_type_shape(global.part_vento2, pt_shape_flare);
part_type_size(global.part_vento2, 0.03, 0.05, 0, 0.9);
part_type_color2(global.part_vento2, c_silver, c_dkgrey);
part_type_alpha3(global.part_vento2, 1, 1, 0.4);
part_type_speed(global.part_vento2, 32, 39, -0, -1);
part_type_direction(global.part_vento2, 0, -0, 0, 20);
part_type_blend(global.part_vento2, false);
part_type_life(global.part_vento2, 15, 18);

global.part_vento3 = part_type_create();
part_type_shape(global.part_vento3, pt_shape_flare);
part_type_size(global.part_vento3, 0.03, 0.05, 0, 0.9);
part_type_color2(global.part_vento3,c_silver, c_dkgrey);
part_type_alpha3(global.part_vento3, 1, 1, 0.4);
part_type_speed(global.part_vento3, 32, 39, -0, -1);
part_type_direction(global.part_vento3, 180, 180, 0, 20);
part_type_blend(global.part_vento3, false);
part_type_life(global.part_vento3, 15, 18);

global.part_vento1 = part_type_create();
part_type_shape(global.part_vento1, pt_shape_flare);
part_type_size(global.part_vento1, 0.04, 0.5, 0, 0.9);
part_type_color2(global.part_vento1, c_silver, c_dkgrey);
part_type_alpha3(global.part_vento1, 1, 1, 1);
part_type_speed(global.part_vento1, 9, 12, -0.3, -1);
part_type_direction(global.part_vento1, 0, 359, 0, 20);
part_type_blend(global.part_vento1, false);
part_type_life(global.part_vento1, 8, 13);


#endregion

#region variaveis globais
global.tamanho_barra_de_mana = 0
global.P_System=part_system_create_layer("Instances", true);
global.left = false
global.right = false
global.xp = 0
global.directionp1l = 0
global.ataque1 = 0
global.temp_pause1 = 0
global.dar_xp = 1
global.pulo_duplo = 0
global.vida = 100
global.mana_reduzir = 0
global.reviver = 10
global.nvl = 0
global.atacar_espada = 1
global.mana = 100
global.tamanho_barra_de_vida = 0
global.defesa = 0
global.hab2_knockback = 0
global.diminuixp = 0
global.dash = 0
global.cor_up =0
global.treme = 12
global.espada_equipada = 1
global.directionp2l = 0
global.basico = 1
global.coins = 0
global.my_id_control1 = 0
global.usar_habs1 = 1
global.habilidade2 = 1
#endregion

