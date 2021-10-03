
if(place_meeting(x,y,oPlayer) == true)
{
	oPlayer.currentHp = oPlayer.currentHp +20;
	instance_destroy();
}

if(timer <=0)
{
	instance_destroy();
}
timer = timer-1;