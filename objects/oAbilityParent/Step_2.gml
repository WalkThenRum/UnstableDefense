if(arcing == true)
{
	arcFrameCounter = arcFrameCounter+1;
	if(arcFrameCounter ==5)
	{
		heatLevel = heatLevel + 20;
		instance_create_layer(x,y,"Instances",oArc);
	}
	
	if(arcFrameCounter >=60)
	{
		arcFrameCounter = 0;
		arcing = false;
	}
}

if(chilled == true)
{
	currentCoolingRate = 1;
	chilledCounter = chilledCounter-1;
	if(chilledCounter <=0)
	{
		chilled = false;
		currentCoolingRate = baseCoolingRate;
	}
}

if(sparked == true)
{
	if(justSparked ==true)
	{
		instance_create_layer(x,y,"Instances",oSpark);
		instance_create_layer(x,y,"Instances",oSpark);
		instance_create_layer(x,y,"Instances",oSpark);
		heatLevel = heatLevel +20;
		sparkedActualCounter = sparkedCounter;
	}
	justSparked = false
	sparkedActualCounter = sparkedActualCounter-1;
	if(sparkedActualCounter == 0)
	{
		sparked = false;
		justSparked = true;
	}
}



if(heatLevel >0)
{
	heatLevel = max(0,heatLevel - currentCoolingRate);
}

if(heatLevel >=100)
{
	explode = true;
}

if(burned == true)
{
	if(beenBurned == false)
	{
		heatLevel = heatLevel +10;
	}
	beenBurned = true;
	burnedCounter = burnedCounter-1;
	if(burnedCounter <=0)
	{
		burned = false;
		beenBurned = false;
	}
}