event_inherited();

draw_self();

if(cooldownTimer >0)
{
	draw_sprite(sCooldownBar,0,x-8,y+8);
	draw_sprite(sCooldownBarBar,0,x+8-16*(cooldownTimer/cooldown),y+8);
}