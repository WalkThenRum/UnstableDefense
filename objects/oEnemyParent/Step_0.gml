
if(chilled == true)
{
	currentMoveSpeed = .5*baseMoveSpeed;
	chilledCounter = chilledCounter-1;
	if(chilledCounter <=0)
	{
		chilled = false;
		currentMoveSpeed = baseMoveSpeed;
	}
}

if(burned == true)
{
	if(beenBurned == false)
	{
		currentHp = currentHp - 30;
	}
	beenBurned = true;
	burnedCounter = burnedCounter-1;
	if(burnedCounter <=0)
	{
		burned = false;
		beenBurned = false;
	}
}

if(currentHp <=0)
{
	var i = irandom(100);
	if(i <= 2*powerLevel)
	{
		instance_create_layer(x,y,"Instances",oHeart);
	}
	global.score = global.score + powerLevel;
	instance_destroy();
}