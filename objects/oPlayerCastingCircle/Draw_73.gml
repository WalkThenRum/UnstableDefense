draw_self();

if(position_meeting(mouse_x,mouse_y,self) == true)
{
	cursor_sprite = sPlayerCanCast;
}
else
{
	cursor_sprite = sPlayerCantCast;
}