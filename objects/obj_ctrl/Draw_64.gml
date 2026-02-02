draw_set_font(fnt_pixel)

if obj_player.controlando != noone
{
draw_text(200, 70, string(obj_player.controlando.passos));
	
}
else{
	
// contador de passos
draw_text(200, 70, string(0));
}

draw_text(800, 70,"Fase: " + string(fase));


draw_text(400, 70, "R to restart");

if obj_player.controlando == noone && fase == 1
{
	
draw_text(250, 750, "Espere o guarda se aproximar");
draw_text(200, 800, "Pressione  'E'  para possuir o guarda");	
	
	
}



window_set_size(1280,960);
gpu_set_texfilter(false)
