event_inherited();

///what it does when activated
if(activated == true)
{
	if(justActivated == true)
	{
		CastingCircle = instance_create_layer(x,y,"LowerInstances",oIconCastingCircle);
	}
	
	justActivated = false;
	
	if(mouse_check_button_pressed(mb_left)&& cooldownTimer <=0)
	{
		cooldownTimer = cooldown;
		heatLevel = heatLevel +heatFromCast;
		instance_create_layer(x,y,"Instances",oArc);
	}
	else if(mouse_check_button_pressed(mb_right))
	{
		instance_destroy(oIconCastingCircle);
		instance_destroy();
	}
}
else
{
	justActivated = true;
	
	if(CastingCircle != noone)
	{
		instance_destroy(CastingCircle);
		CastingCircle = noone;
	}
}

if(cooldownTimer <=0)
{
	cooldownTimer = 0;
}
else
{
	cooldownTimer = cooldownTimer -1;
}
