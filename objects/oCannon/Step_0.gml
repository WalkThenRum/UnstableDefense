/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(activated == true)
{
	if(justActivated == true)
	{
		castingLine = instance_create_layer(x,y,"LowerInstances",oIconCastingLine);
	}
	
	justActivated = false;
	
	if(mouse_check_button_pressed(mb_left)&& cooldownTimer <=0)
	{
		cooldownTimer = cooldown;
		heatLevel = heatLevel +heatFromCast;
		instance_create_layer(x,y,"Instances",oCannonBall);
	}
	else if(mouse_check_button_pressed(mb_right))
	{
		instance_destroy(oIconCastingLine);
		instance_destroy();
	}
}
else
{
	justActivated = true;
	
	if(castingLine != noone)
	{
		instance_destroy(castingLine);
		castingLine = noone;
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
