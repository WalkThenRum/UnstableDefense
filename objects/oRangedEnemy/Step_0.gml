/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(attacking == false)
{
	if(moveTimer <0)
	{
		destinationPointX = random_range(116,1043);
		destinationPointY = random_range(116,623);
		moveTimer = 30;
	}
	
	if(x<116 or x>1043 or y<116 or y>623)
	{
		destinationPointX = random_range(116,1043);
		destinationPointY = random_range(116,623);
		moveTimer = 30;
	}
	
	if( (abs(x - destinationPointX) +abs(y-destinationPointY) <10) )
	{
		destinationPointX = random_range(116,1043);
		destinationPointY = random_range(116,623);
		moveTimer = 30;
	}
	
	move_towards_point(destinationPointX, destinationPointY,baseMoveSpeed)
	
}

if(attackTimer <=0 or attacking == true)
{
	attacking = true;
	if(justAttacked == false)
	{
		instance_create_layer(x,y,"Instances",oEnemyBullet);
	}
	attackingTimer = attackingTimer-1;
	justAttacked = true;
	speed = 0;
	if(attackingTimer = 0)
	{
		attacking = false;
		attackTimer = 60;
		attackingTimer = 15;
		justAttacked = false
	}
	
}

if(attackTimer >0)
{
	attackTimer = attackTimer -1;
}