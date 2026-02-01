
if (possessado)
{

if !correcao
{

var cx = round((x - tile_size/2) / tile_size) * tile_size + tile_size/2;
var cy = round((y - tile_size/2) / tile_size) * tile_size + tile_size/2;

if (!place_meeting(cx, cy, obj_wall))
{
    x = cx;
    y = cy;
}

else
{

    var offsets = [
        [ tile_size, 0],
        [-tile_size, 0],
        [0,  tile_size],
        [0, -tile_size]
    ];

    for (var i = 0; i < array_length(offsets); i++)
    {
        var nx = cx + offsets[i][0];
        var ny = cy + offsets[i][1];

        if (!place_meeting(nx, ny, obj_wall))
        {
            x = nx;
            y = ny;
            break;
        }
    }
}

// reseta movimento grid
moving = false;
target_x = x;
target_y = y;
correcao = 1;	



}
	if vivo{
	sprite_index = spr_default_possuido_animado;
	}
	else{
		sprite_index = spr_morto;
	}

// INPUT (só se NÃO estiver andando)

if (!moving)
{

    var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    // trava diagonal
    if (h != 0) v = 0;

    if (h != 0 || v != 0)
    {
        var next_x = x + h * tile_size;
        var next_y = y + v * tile_size;
		
        // checa colisão NO TILE DESTINO
        if !place_meeting(next_x, next_y, obj_wall)
        {
            target_x = next_x;
            target_y = next_y;
            moving = true;
			passos -=1
			audio_play_sound(snd_passos,1,0)
        }	
		
    }
}
else
{
   if passos >=0{
   var direcao = point_direction(x, y, target_x, target_y);

    x += lengthdir_x(move_speed, direcao);
    y += lengthdir_y(move_speed, direcao);

    // chegou no centro do tile
    if (point_distance(x, y, target_x, target_y) <= move_speed)
    {
        x = target_x;
        y = target_y;
        moving = false;
    }
	
   }
}
	

	
}
else
{
	if movimento = "parado" && vivo{
		x+=0;
		y+=0;
		sprite_index = spr_guard
		
	}
	
	if (movimento == "horizontal" && vivo)
	{
		if (!place_meeting(x + vel * dir, y, obj_wall) || !place_meeting(x + vel * dir, y, obj_invisible))
		{
			x += vel * dir;
		}
		else
		{
			dir *= -1; 
		}
	}

	if (movimento == "vertical" && vivo)
	{
		if (!place_meeting(x, y + vel * dir, obj_wall) || !place_meeting(x, y + vel * dir, obj_invisible))
		{
			y += vel * dir;
		}
		else
		{
			dir *= -1; 
		}
	}

	if (movimento == "ciclico" && vivo)
	{
		var dx = 0;
		var dy = 0;
	
		switch (estado)
		{
			case 0: dx =  tile; break;
			case 1: dy =  tile; break;
			case 2: dx = -tile; break;
			case 3: dy = -tile; break;
		}
	
	
		if (place_meeting(x + dx, y + dy, obj_wall) || place_meeting(x + dx, y + dy, obj_invisible) )
		{
			estado = (estado + 1) mod 4;
		}
	
		// anda
		switch (estado)
		{
			case 0: x += vel; break;
			case 1: y += vel; break;
			case 2: x -= vel; break;
			case 3: y -= vel; break;
		}
	}
	
	if(movimento == "looking" && vivo){
		x+=0;
		y+=0;
		visao()

	}

}