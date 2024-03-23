// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function mover_create(_v = 5, _p, _g = .31){
	pulando = 0
	pulos = 1
	if _p == undefined velocidade_pulo2 = 9
	else velocidade_pulo2 = _p
	velocidade_horizontal = 0;
	velocidade_vertical = 0;
	velocidade = _v;
	gravidade = _g;
	if _p == undefined velocidade_pulo = 8
	else velocidade_pulo = _p

	inputs = {

		left	:	(ord("A")),
		right	:	(ord ("D")),
		jump	:	(vk_space),
		}
}
function mover_step(){
	var _chao = place_meeting (x, y+1, obj_chao);

	var _left, _right, _jump;

	_left = keyboard_check (inputs.left);
	_right = keyboard_check (inputs.right);
	_jump = keyboard_check (inputs.jump);

	velocidade_horizontal = (_right - _left) * velocidade
	//Pulando
	if (_chao)
		{
		pulos = 1
		if (_jump)
		{	
		pulando = 1
		velocidade_vertical = - velocidade_pulo;
		}
		}
	else
		{
		if(_jump and pulando = 1 and pulos =1){
			velocidade_vertical = - velocidade_pulo2
			pulos = 0
		}
		velocidade_vertical += gravidade;
		}
}
function mover_end_step(){
	var _colisao = instance_place (x + velocidade_horizontal, y, obj_chao)
//se eu colidi eu grudo em quem eu colidi
if (_colisao)
	{
	//Checando se eu estou indo para direita
	if (velocidade_horizontal > 0)
	{
		x = _colisao.bbox_left + (x - bbox_right);
	}
	//Checando se eu estou indo para esquerda
	if (velocidade_horizontal < 0)
	{
		x = _colisao.bbox_right + (x - bbox_left);
	}
	//Uma vez que eu colidi, não importa o lado, eu paro
	velocidade_horizontal = 0;
	}

x += velocidade_horizontal;
var _colisao = instance_place(x, y + velocidade_vertical, obj_chao	)
if (_colisao)
	{
	if	(velocidade_vertical > 0)
	{
	//Indo pra baixo
	y = _colisao.bbox_top + (y - bbox_bottom);
	}
	if (velocidade_vertical < 0)
	{
	//Indo pra cima	
	y = _colisao.bbox_bottom + (y - bbox_top);
	}
	velocidade_vertical = 0;
	}

y += velocidade_vertical;
}
function vermelhar(_a = 0){
	alarm[_a] = room_speed / 17
	image_blend = c_red
}