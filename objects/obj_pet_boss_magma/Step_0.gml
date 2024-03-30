/// @description Inserir descrição aqui

// Você pode escrever seu código neste editor
if instance_exists(obj_boss_magma){
if obj_boss_magma.left = 1 {
	sprite_index = spr_pet_do_boss2
	x = obj_boss_magma.x + 90
}
if obj_boss_magma.right = 1{
	sprite_index = spr_pet_do_boss1
	x = obj_boss_magma.x - 90
}
y = obj_boss_magma.y - 110
}
if obj_boss_magma.morrer = 1 instance_destroy(id)













