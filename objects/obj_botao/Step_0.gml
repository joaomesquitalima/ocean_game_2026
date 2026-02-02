

if normalmente_aberto
{
	
	if place_meeting(x,y,obj_guard){
		ativado = 1
		sprite_index = spr_botao_ligado
		}
	else{
		ativado = 0	
		sprite_index = spr_botao
		}
	
	
}
else{
	
	
	if !place_meeting(x,y,obj_guard){
		ativado = 1
		sprite_index = spr_botao_ligado
		}
	else{
		ativado = 0	
		sprite_index = spr_botao
		}
	
	
}