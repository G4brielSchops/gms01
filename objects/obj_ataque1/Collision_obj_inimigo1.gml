/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.ataque1 = 1{
	with (other.id){
		life -= 20
		if global.mana <= 96 global.mana += 4
		knockback = 1
		alarm[0] = 5
		sprite_index = spr_inimigo1_toma_dano
	}

}
if global.ataque1 = 2{
	with (other.id){
		life -= 5
		knockback = 1
		alarm[0] = 5
		sprite_index = spr_inimigo1_toma_dano
	}
}
if global.ataque1 = 3{
	with (other.id){
		life -= 10
		knockback = 1
		alarm[0] = 5
		sprite_index = spr_inimigo1_toma_dano
	}
}











