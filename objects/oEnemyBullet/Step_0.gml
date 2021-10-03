if(place_meeting(x,y,oPlayer) == true or place_meeting(x,y,oAbilityParent)==true)
{
	var list = ds_list_create();

	instance_place_list(x,y,oAbilityParent,list,false)

	while(ds_list_empty(list) == false)
	{
		var abilityIcon = ds_list_find_value(list,0);
		abilityIcon.heatLevel = abilityIcon.heatLevel+5;
		ds_list_delete(list,0);
	}
		
	ds_list_destroy(list);
	
	if(place_meeting(x,y,oPlayer) == true)
	{
		oPlayer.currentHp = oPlayer.currentHp - 5;
	}
	
	instance_destroy();
}