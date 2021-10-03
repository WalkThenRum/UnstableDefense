/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(activated == true)
{

	
	if(mouse_check_button_pressed(mb_left)&& cooldownTimer <=0)
	{
		cooldownTimer = cooldown;
		heatLevel = heatLevel +heatFromCast;
		instance_create_layer(x,y,"Instances",oSpark);
		instance_create_layer(x,y,"Instances",oSpark);
		instance_create_layer(x,y,"Instances",oSpark);
	}
	else if(mouse_check_button_pressed(mb_right))
	{
		instance_destroy();
	}
}
else
{
	justActivated = true;
}

if(cooldownTimer <=0)
{
	cooldownTimer = 0;
}
else
{
	cooldownTimer = cooldownTimer -1;
}


