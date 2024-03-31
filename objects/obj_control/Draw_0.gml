/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if surface_exists(surf){
	surface_set_target(surf)
	draw_clear_alpha(c_black, 1)
	surface_reset_target()
	draw_surface_ext(surf,obj_player.x-1000,obj_player.y+1000,1,1,0,c_white,darkness)
}
else{

	surf = surface_create(room_width, room_height)
}
