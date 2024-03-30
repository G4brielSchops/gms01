/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if place_meeting(x - 10, y, obj_chao_boss4) and tirar_chao = 1{
obj_chao_boss4.y += 400
tirar_chao = 0
alarm[8] = room_speed * 2
}
if place_meeting(x + 10, y, obj_chao_boss5) and tirar_chao = 1{
obj_chao_boss5.y += 400
tirar_chao = 0
alarm[9] = room_speed * 2
}













