draw_self();
draw_set_color(c_black);
draw_set_font(Font1);
if(chosen1 == true)
{
	draw_set_halign(fa_left)
	draw_text(x,y+48,"1");
}
else if(chosen2 == true)
{
	draw_set_halign(fa_left)
	draw_text(x,y+48,"2");
}
else if(chosen3 == true)
{
	draw_set_halign(fa_left)
	draw_text(x,y+48,"3");
}