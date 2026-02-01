function visao()
{
    var ang_visao = image_angle - 90;

    var end_x = x + lengthdir_x(vision_range, ang_visao);
    var end_y = y + lengthdir_y(vision_range, ang_visao);

    draw_line(x, y, end_x, end_y);

    var alvo = collision_line(
        x, y,
        end_x, end_y,
        obj_player,
        false,
        true
    );

    if (alvo != noone)
    {
        show_debug_message("Vi o player!");
		obj_player.controlando.vivo = 0
		obj_player.controlando.passos = -1;

       return 1
    }
}
