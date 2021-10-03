/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(attacking == false)
{
	if(changeDirectionCounter <=0)
	{
		variance = irandom_range(50,100);
		XposOrNeg = irandom_range(1,2);		
		YposOrNeg = irandom_range(1,2);
		if(XposOrNeg == 2)
		{
			XposOrNeg = -1;
		}
		if(YposOrNeg == 2)
		{
			YposOrNeg = -1;
		}
	}
	destinationPointX = oPlayer.x+XposOrNeg*variance;
	destinationPointY = oPlayer.y-YposOrNeg*variance;
	changeDirectionCounter = changeDirectionCounter -1;
	if(changeDirectionCounter <= 0)
	{
		changeDirectionCounter = 30;
	}
	if(abs(x - destinationPointX) +abs(y-destinationPointY) <4)
	{
		changeDirectionCounter = 30;
		speed = 0;
		variance = irandom_range(50,100);
		XposOrNeg = irandom_range(1,2);		
		YposOrNeg = irandom_range(1,2);
		if(XposOrNeg == 2)
		{
			XposOrNeg = -1;
		}
		if(YposOrNeg == 2)
		{
			YposOrNeg = -1;
		}
	}
	else
	{
		move_towards_point(destinationPointX,destinationPointY,currentMoveSpeed);
	}
}

if((abs(x - oPlayer.x) +abs(y-oPlayer.y) <100 && attackTimer <=0) or attacking == true)
{
	attacking = true;
	if(justAttacked == false)
	{
		attackCone = instance_create_layer(x+10*dcos(point_direction(x,y,oPlayer.x,oPlayer.y)),y-10*dsin(point_direction(x,y,oPlayer.x,oPlayer.y)),"Instances",oEnemySpear)
	}
	justAttacked = true;
	speed = 0;
	if( instance_exists(oEnemySpear) == false)
	{
		attacking = false;
		attackTimer = 90;
		justAttacked = false
	}
	
}

if(attackTimer >0)
{
	attackTimer = attackTimer -1;
}