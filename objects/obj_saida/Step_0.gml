var total = instance_number(obj_botao);
var ativados = 0
for (var i = 0; i < total; i++)
{
    var b = instance_find(obj_botao, i);
    if b.ativado == 1{ ativados+=1}
}

if ativados == total
{
sprite_index = spr_exit
	
}
else{
	sprite_index = spr_exit_closed
}