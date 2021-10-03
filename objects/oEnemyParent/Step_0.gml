
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
	global.score = global.score + powerLevel;
	instance_destroy();
}