if(spawnTimer =0 &&(place_meeting(x,y,oEnemyParent) == true or place_meeting(x,y,oPlayer) == true or place_meeting(x,y,oAbilityParent) == true))
{
	explode = true;
}

if(spawnTimer >0)
{
	spawnTimer = spawnTimer -1;
}


if(explode == true)
{
	speed = 0;
	if(frameCounter < 15)
	{
		frameCounter = 20;
	}
	if(frameCounter <25)
	{
		image_index = 3;
	}
	else if(frameCounter <30)
	{
		image_index = 4;
	}
	else if(frameCounter <35)
	{
		image_index = 5;
	}
	else if(frameCounter <40)
	{
		image_index = 6;
	}
	else
	{
		instance_destroy();
	}
	
	if(frameCounter == 35)
	{
		var list = ds_list_create();

		instance_place_list(x,y,oAbilityParent,list,false)

		while(ds_list_empty(list) == false)
		{
			var abilityIcon = ds_list_find_value(list,0);
				abilityIcon.sparked = true;
				abilityIcon.sparkedCounter = 30;
				ds_list_delete(list,0);
		}


		instance_place_list(x,y,oEnemyParent,list,false)

		while(ds_list_empty(list) == false)
		{
			var enemyThatGotHit = ds_list_find_value(list,0);
			enemyThatGotHit.currentHp = enemyThatGotHit.currentHp -20;
			ds_list_delete(list,0);
		}

		ds_list_destroy(list);

		if(place_meeting(x,y,oPlayer) == true)
		{
			oPlayer.currentHp = oPlayer.currentHp - 5;
		}

	}
}
else
{
	if(frameCounter <5)
	{
		image_index = 0;
	}
	else if(frameCounter <10)
	{
		image_index = 1;
	}
	else if(frameCounter <15)
	{
		image_index = 2;
	}
}

frameCounter = frameCounter+1;
if(frameCounter ==15)
{
	frameCounter = 0;
}