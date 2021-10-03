// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SummonSparkTower(){
		
var casted = false;
if(mouse_check_button_pressed(mb_left) == true)
{
	if(position_meeting(mouse_x,mouse_y,oPlayerCastingCircle) == true)
	{
		casted = true;
	}
}

	
if(casting1 == true && casted == true)
{
	ability1Instance = instance_create_layer(mouse_x,mouse_y,"Instances",oSparkTower);
	instance_destroy(oPlayerCastingCircle);
	casting1 = false;
	summoning = false;
}
else if(casting2 == true && casted == true)
{
	ability2Instance = instance_create_layer(mouse_x,mouse_y,"Instances",oSparkTower);
	instance_destroy(oPlayerCastingCircle);
	casting2 = false;
	summoning = false;
}
else if(casting3 == true && casted == true)
{
	ability3Instance = instance_create_layer(mouse_x,mouse_y,"Instances",oSparkTower);
	instance_destroy(oPlayerCastingCircle);
	casting3 = false;
	summoning = false;
}

}