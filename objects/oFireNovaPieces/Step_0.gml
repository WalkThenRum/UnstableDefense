




var frameList = ds_list_create();

if( place_meeting(x,y,oEnemyParent) == true)
{
	instance_place_list(x,y,oEnemyParent,frameList,false);

	while( ds_list_empty(frameList) == false)
	{
		if(ds_list_find_index(list,ds_list_find_value(frameList,0)) == -1)
		{
			var enemyHit = ds_list_find_value(frameList,0);
			enemyHit.currentHp = enemyHit.currentHp -10;
			ds_list_add(list,ds_list_find_value(frameList,0))
			ds_list_delete(frameList,0);
		}
		else
		{
			ds_list_delete(frameList,0);
		}
	}
}

ds_list_destroy(frameList);

if(place_meeting(x,y,oPlayer)== true)
{
	if(hitPlayer == false)
	{
		oPlayer.currentHp = oPlayer.currentHp -10;
	}
	hitPlayer = true;
}
