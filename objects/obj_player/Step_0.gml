


var alvo = noone;
var menor_dist = 999999;



var total = instance_number(obj_guard);

for (var i = 0; i < total; i++)
{
	var inst = instance_find(obj_guard, i);
	
	
	if (inst != controlando)
	{
		var d = point_distance(x, y, inst.x, inst.y);
		
		if (d < menor_dist && d <=70)
		{
			menor_dist = d;
			alvo = inst;
		}
	}
}



if ((keyboard_check_pressed(ord("E")) && alvo != noone))

{
	audio_play_sound(snd_possuir,1,0)
	
	if (controlando != noone)
	{
		controlando.possessado = false;
		controlando.vivo = 0;
		controlando.sprite_index = spr_morto;
	}

	controlando = alvo;
	controlando.possessado = true;
	controlando.movimento = "parado";
	

	visible = false;
}

if (controlando != noone)
{
	x = controlando.x;
	y = controlando.y;
}

//if place_meeting(x,y,obj_botao){}
