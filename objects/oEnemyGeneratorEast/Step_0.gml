if(global.startWave == true)
{
	wavePowerLevel = global.waveNumber*5;
	
	while(wavePowerLevel >=3)
	{
		summonNumber = irandom_range(1,4);
		xSummon = irandom_range(x,x+1);
		ySummon = irandom_range(y,y+540);
		if(summonNumber ==1 )
		{
			var enemy = instance_create_layer(xSummon,ySummon,"Instances",oMeleeEnemy);
			wavePowerLevel = wavePowerLevel - enemy.powerLevel;
		}
		else if(summonNumber ==2 )
		{
			var enemy = instance_create_layer(xSummon,ySummon,"Instances",oBigMeleeEnemy);
			wavePowerLevel = wavePowerLevel - enemy.powerLevel;
		}
		else if(summonNumber ==3 )
		{
			var enemy = instance_create_layer(xSummon,ySummon,"Instances",oRangedEnemy);
			wavePowerLevel = wavePowerLevel - enemy.powerLevel;
		}
		else if(summonNumber ==4 )
		{
			var enemy = instance_create_layer(xSummon,ySummon,"Instances",oSpearEnemy);
			wavePowerLevel = wavePowerLevel - enemy.powerLevel;
		}
	}
}

