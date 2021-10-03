var list = ds_list_create();

instance_place_list(x,y,oAbilityParent,list,false)

while(ds_list_empty(list) == false)
{
	var abilityIcon = ds_list_find_value(list,0);
	if(abilityIcon == oCoolingNova)
	{
		ds_list_delete(list,0);
	}
	else
	{
		abilityIcon.chilled = true;
		abilityIcon.chilledCounter = 90;
		ds_list_delete(list,0);
	}
}


instance_place_list(x,y,oEnemyParent,list,false)

while(ds_list_empty(list) == false)
{
	var enemyThatGotHit = ds_list_find_value(list,0);
	enemyThatGotHit.chilled = true;
	enemyThatGotHit.chilledCounter = 90;
	ds_list_delete(list,0);
}

ds_list_destroy(list);

if(place_meeting(x,y,oPlayer) == true)
{
	oPlayer.chilled = true
	oPlayer.chilledCounter = 90;
}


frameCounter = 0;
frameTotal = 15;