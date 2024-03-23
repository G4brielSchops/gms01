/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

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
var _colisao2 = instance_place (x + velocidade_horizontal, y, obj_inimigo1)
//se eu colidi eu grudo em quem eu colidi
if (_colisao2)
	{
	//Checando se eu estou indo para direita
	if (velocidade_horizontal > 0)
	{
		x = _colisao2.bbox_left + (x - bbox_right);
	}
	//Checando se eu estou indo para esquerda
	if (velocidade_horizontal < 0)
	{
		x = _colisao2.bbox_right + (x - bbox_left);
	}
	//Uma vez que eu colidi, não importa o lado, eu paro
	velocidade_horizontal = 0;
	}
x += velocidade_horizontal;
var _colisao = instance_place(x, y + velocidade_vertical, obj_chao	)
if (_colisao){
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
	velocidade_vertical = 0
}
y += velocidade_vertical;





















