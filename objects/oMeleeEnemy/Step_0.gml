/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(attacking == false)
{
	var destinationPointX = oPlayer.x+10*dcos(point_direction(oPlayer.x,oPlayer.y,x,y));
	var destinationPointY = oPlayer.y-10*dsin(point_direction(oPlayer.x,oPlayer.y,x,y));
	if(abs(x - destinationPointX) +abs(y-destinationPointY) <4)
	{
		speed = 0;
	}
	else
	{
		move_towards_point(destinationPointX,destinationPointY,currentMoveSpeed);
	}
}

if((abs(x - oPlayer.x) +abs(y-oPlayer.y) <20 && attackTimer <=0) or attacking == true)
{
	attacking = true;
	if(justAttacked == false)
	{
		attackCone = instance_create_layer(x+10*dcos(point_direction(x,y,oPlayer.x,oPlayer.y)),y-10*dsin(point_direction(x,y,oPlayer.x,oPlayer.y)),"Instances",oMeleeCone)
	}
	justAttacked = true;
	speed = 0;
	if( instance_exists(attackCone) == false)
	{
		attacking = false;
		attackTimer = 20;
		justAttacked = false
	}
	
}

if(attackTimer >0)
{
	attackTimer = attackTimer -1;
}