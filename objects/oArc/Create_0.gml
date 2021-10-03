audio_play_sound(sndArcSound,6,false);

var list = ds_list_create();

instance_place_list(x,y,oAbilityParent,list,false)

while(ds_list_empty(list) == false)
{
	var abilityIcon = ds_list_find_value(list,0);
	abilityIcon.arcing = true;
	ds_list_delete(list,0);
}


instance_place_list(x,y,oEnemyParent,list,false)

while(ds_list_empty(list) == false)
{
	var enemyThatGotHit = ds_list_find_value(list,0);
	enemyThatGotHit.currentHp = enemyThatGotHit.currentHp - 20;
	ds_list_delete(list,0);
}

ds_list_destroy(list);

if(place_meeting(x,y,oPlayer) == true)
{
	oPlayer.currentHp = oPlayer.currentHp - 5;
}

image_speed = 0;

frameCounter = 0;
frameTotal = 15;
