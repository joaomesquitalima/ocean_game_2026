draw_set_font(f_texto)

if obj_player.controlando != noone
{
draw_text(200, 70, string(obj_player.controlando.passos));
	
}
else{
	
// contador de passos
draw_text(200, 70, string(0));
}

draw_text(800, 50,"Fase: " + string(string_digits(room_get_name(0))));

window_set_size(1280,900);
gpu_set_texfilter(false)
