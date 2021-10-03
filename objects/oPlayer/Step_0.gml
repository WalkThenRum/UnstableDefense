
if(dead == false)
{
	///abilities
if(keyboard_check_pressed(ord("1")) == true or casting1 == true)
{
	casting1 = true;
	casting2 = false;
	casting3 = false;
	summoning = true;
	if(instance_exists(ability1Instance) == true)
	{
		if(instance_exists(oPlayerCastingCircle)==true)
		{
			instance_destroy(oPlayerCastingCircle);
		}
		summoning = false;
		ability1Instance.activated = true;
		if(instance_exists(ability2Instance) == true)
		{
			ability2Instance.activated = false;
		}
		if(instance_exists(ability3Instance) == true)
		{
			ability3Instance.activated = false;
		}
	}
	else
	{
		if(instance_exists(ability2Instance) == true)
		{
			ability2Instance.activated = false;
		}
		if(instance_exists(ability3Instance) == true)
		{
			ability3Instance.activated = false;
		}
		script_execute(ability1);
	}
}

if(keyboard_check_pressed(ord("2")) == true or casting2 == true)
{
	casting1 = false;
	casting2 = true;
	casting3 = false;
	summoning = true;
	if(instance_exists(ability2Instance))
	{
		if(instance_exists(oPlayerCastingCircle)==true)
		{
			instance_destroy(oPlayerCastingCircle);
		}
		summoning = false;
		if(instance_exists(ability1Instance) == true)
		{
			ability1Instance.activated = false;
		}
		ability2Instance.activated = true;
		if(instance_exists(ability3Instance) == true)
		{
			ability3Instance.activated = false;
		}
	}
	else
	{
		if(instance_exists(ability1Instance) == true)
		{
			ability1Instance.activated = false;
		}
		if(instance_exists(ability3Instance) == true)
		{
			ability3Instance.activated = false;
		}
		script_execute(ability2);
	}
}

if(keyboard_check_pressed(ord("3")) == true or casting3 == true)
{
	casting1 = false;
	casting2 = false;
	casting3 = true;
	summoning = true;
	if(instance_exists(ability3Instance))
	{
		if(instance_exists(oPlayerCastingCircle)==true)
		{
			instance_destroy(oPlayerCastingCircle);
		}
		summoning = false;
		if(instance_exists(ability1Instance) == true)
		{
			ability1Instance.activated = false;
		}
		if(instance_exists(ability2Instance) == true)
		{
			ability2Instance.activated = false;
		}
		ability3Instance.activated = true;
	}
	else
	{
		if(instance_exists(ability1Instance) == true)
		{
			ability1Instance.activated = false;
		}
		if(instance_exists(ability2Instance) == true)
		{
			ability2Instance.activated = false;
		}
		script_execute(ability3);
	}
}




if(summoning == true)
{
	if(instance_exists(oPlayerCastingCircle))
	{
	}
	else
	{
		instance_create_layer(x,y,"LowerInstances",oPlayerCastingCircle);
	}
}

if(burned == true)
{
	if(beenBurned == false)
	{
		currentHp = currentHp - 10;
	}
	beenBurned = true;
	burnedCounter = burnedCounter-1;
	if(burnedCounter <=0)
	{
		burned = false;
		beenBurned = false;
	}
}


///movement

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


var hMovement = 0;
var vMovement = 0;
if(keyboard_check(ord("W"))==true)
{
	vMovement = vMovement+1;
}

if(keyboard_check(ord("S"))==true)
{
	vMovement = vMovement-1;
}

if(keyboard_check(ord("D"))==true)
{
	hMovement = hMovement+1;
}

if(keyboard_check(ord("A"))==true)
{
	hMovement = hMovement-1;
}

if(hMovement !=0 && vMovement != 0)
{
	if(hMovement ==1)
	{
		x = x+currentMoveSpeed*.707;  ///~root2 over 2
	}
	else
	{
		x = x-currentMoveSpeed*.707;
	}
	
	if(vMovement ==1)
	{
		y = y-currentMoveSpeed*.707;  ///~root2 over 2
	}
	else
	{
		y = y+currentMoveSpeed*.707;
	}
}
else if(hMovement == 0 && vMovement != 0)
{
	if(vMovement == 1)
	{
		y = y-currentMoveSpeed;
	}
	else
	{
		y = y+currentMoveSpeed;
	}
}
else if(hMovement != 0 && vMovement == 0)
{
	if(hMovement == 1)
	{
		x = x+currentMoveSpeed;
	}
	else
	{
		x = x-currentMoveSpeed;
	}
}

}

//death

if(currentHp <=0)
{
	speed = 0;
	if(dead == false)
	{
		instance_create_layer(430,220,"Board",oGameOverBoard);
	}
	dead = true;
}