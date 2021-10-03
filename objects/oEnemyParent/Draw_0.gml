draw_self();

if(chilled == true)
{
	image_blend = make_colour_hsv(178,26,87);
}
else
{
	image_blend = -1;
}



draw_sprite_stretched(sHealthBar,0,x-8,y-13,16*currentHp/maxHp,3);