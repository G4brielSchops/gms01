
global.part_death_boss_magma = part_type_create();
part_type_shape(global.part_death_boss_magma, pt_shape_flare);
part_type_size(global.part_death_boss_magma, 0.01, 0.05, 0, 0.5);
part_type_color1(global.part_death_boss_magma, c_red);
part_type_alpha3(global.part_death_boss_magma, 0.5, 1, 0);
part_type_speed(global.part_death_boss_magma, 29, 38, -0.10, 0);
part_type_direction(global.part_death_boss_magma, 0, 359, 0, 20);
part_type_blend(global.part_death_boss_magma, false);
part_type_life(global.part_death_boss_magma, 70, 90);
