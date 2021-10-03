

if(frameCounter<3)
{
	image_index = 0;
}
else if(frameCounter<6)
{
	image_index = 1;
}
else if(frameCounter<9)
{
	image_index = 2;
}
else if(frameCounter<12)
{
	image_index = 3;
}
else if(frameCounter<15)
{
	image_index = 4;
}
else if(frameCounter<18)
{
	image_index = 5;
}
else if(frameCounter<21)
{
	image_index = 6;
}
else
{
	instance_destroy();
}


if(frameCounter == 18)
{
	var list = ds_list_create();

	instance_place_list(x,y,oAbilityParent,list,false)

	audio_play_sound(sndEnemyMelee,4,false);

	while(ds_list_empty(list) == false)
	{
		var abilityIcon = ds_list_find_value(list,0);
		abilityIcon.heatLevel = abilityIcon.heatLevel+10;
		ds_list_delete(list,0);
	}
		
	ds_list_destroy(list);
	
	if(place_meeting(x,y,oPlayer) == true)
	{
		oPlayer.currentHp = oPlayer.currentHp - 10;
	}
}


frameCounter = frameCounter+1;