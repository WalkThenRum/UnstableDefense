if(clickedOn == true && hovered == true )
{
	if(chosen == false)
	{
		if(global.ability1 == 0)
		{
			chosen1 = true;
			global.ability1 = "fireNova";
			chosen = true;
		}
		else if(global.ability2 == 0)
		{
			chosen2 = true;
			global.ability2 = "fireNova";
			chosen = true;
		}
		else if(global.ability3 == 0)
		{
			chosen3 = true;
			global.ability3 = "fireNova";
			chosen = true;
		}
	}
	else if(chosen == true)
	{
		if(global.ability1 == "fireNova")
		{
			chosen1 = false;
			global.ability1 = 0;
			chosen = false;
		}
		else if(global.ability2 == "fireNova")
		{
			chosen2 = false;
			global.ability2 = 0;
			chosen = false;
		}
		else if(global.ability3 == "fireNova")
		{
			chosen3 = false;
			global.ability3 = 0;
			chosen = false;
		}
	}
	
}