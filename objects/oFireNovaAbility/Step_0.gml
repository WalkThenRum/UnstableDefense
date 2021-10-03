var list = ds_list_create();

instance_place_list(x,y,oAbilityParent,list,false)

while(ds_list_empty(list) == false)
{
	var abilityIcon = ds_list_find_value(list,0);
	if(abilityIcon == oFireNova)
	{
		ds_list_delete(list,0);
	}
	else
	{
		abilityIcon.burned = true;
		abilityIcon.burnedCounter = 15;
		ds_list_delete(list,0);
	}
}


instance_place_list(x,y,oEnemyParent,list,false)

while(ds_list_empty(list) == false)
{
	var enemyThatGotHit = ds_list_find_value(list,0);
	enemyThatGotHit.burned = true;
	enemyThatGotHit.burnedCounter = 15;
	ds_list_delete(list,0);
}

ds_list_destroy(list);

if(place_meeting(x,y,oPlayer) == true)
{
	oPlayer.burned = true
	oPlayer.burnedCounter = 15;
}


frameCounter = 0;
frameTotal = 15;