#region particulas
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
part_type_speed(global.part_dash, 2, 2.5, -0.01, 1.1);
part_type_direction(global.part_dash, 0, 359, 0, 20);
part_type_blend(global.part_dash, false);
part_type_life(global.part_dash, 150, 180);

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

global.part_coins1 = part_type_create();
part_type_shape(global.part_coins1, pt_shape_flare);
part_type_size(global.part_coins1, 0.005, 0.03, 0, 0.3);
part_type_color2(global.part_coins1, c_yellow, c_olive);
part_type_alpha3(global.part_coins1, 1, 1, 0.4);
part_type_speed(global.part_coins1, 18, 23, -0.3, -1);
part_type_direction(global.part_coins1, 225, 315, 0, 20);
part_type_blend(global.part_coins1, false);
part_type_life(global.part_coins1, 70, 90);

global.part_coins2 = part_type_create();
part_type_shape(global.part_coins2, pt_shape_flare);
part_type_size(global.part_coins2, 0.002, 0.009, 0, 0.08);
part_type_color2(global.part_coins2, c_yellow, c_olive);
part_type_alpha3(global.part_coins2, 1, 1, 0.4);
part_type_speed(global.part_coins2, 9, 12, -0.3, -1);
part_type_direction(global.part_coins2, 0, 359, 0, 20);
part_type_blend(global.part_coins2, false);
part_type_life(global.part_coins2, 8, 13);

#endregion

#region variaveis globais
global.basico = 1

#endregion

