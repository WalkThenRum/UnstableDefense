dead = false;
maxHp = 100;
currentHp = maxHp;

image_speed = 0;
image_index = 0;

baseMoveSpeed = 3;
currentMoveSpeed = baseMoveSpeed;

casting1 = false;
casting2 = false;
casting3 = false;
summoning = false;

ability1Instance = oArcTowerSelection;
ability2Instance = oArcTowerSelection;
ability3Instance = oArcTowerSelection;

castDistance = 100;

chilled = false;
chilledDuration = 90;
chilledCounter = 0;

burned = false;
beenBurned = false;
burnedCounter = 0;







///ability selection

if(global.ability1 == "arcTower")
{
	ability1 = SummonArcTower;
	ability1Object = oArcTower;
}
else if(global.ability2 == "arcTower")
{
	ability2 = SummonArcTower;
	ability2Object = oArcTower;
}
else if(global.ability3 == "arcTower")
{
	ability3 = SummonArcTower;
	ability3Object = oArcTower;
}

if(global.ability1 == "beamTower")
{
	ability1 = SummonBeamTower;	
	ability1Object = oBeamTower;
}
else if(global.ability2 == "beamTower")
{
	ability2 = SummonBeamTower;
	ability2Object = oBeamTower;
}
else if(global.ability3 == "beamTower")
{
	ability3 = SummonBeamTower;
	ability3Object = oBeamTower;
}

if(global.ability1 == "cannon")
{
	ability1 = SummonCannon;
	ability1Object = oCannon;
}
else if(global.ability2 == "cannon")
{
	ability2 = SummonCannon;
	ability2Object = oCannon;
}
else if(global.ability3 == "cannon")
{
	ability3 = SummonCannon;
	ability3Object = oCannon;
}

if(global.ability1 == "coolingNova")
{
	ability1 = SummonCoolingNova;
	ability1Object = oCoolingNova;
}
else if(global.ability2 == "coolingNova")
{
	ability2 = SummonCoolingNova;
	ability2Object = oCoolingNova;
}
else if(global.ability3 == "coolingNova")
{
	ability3 = SummonCoolingNova;
	ability3Object = oCoolingNova;
}

if(global.ability1 == "fireNova")
{
	ability1 = SummonFireNova;
	ability1Object = oFireNova;
}
else if(global.ability2 == "fireNova")
{
	ability2 = SummonFireNova;
	ability2Object = oFireNova;
}
else if(global.ability3 == "fireNova")
{
	ability3 = SummonFireNova;	
	ability3Object = oFireNova;
}

if(global.ability1 == "sparkTower")
{
	ability1 = SummonSparkTower;
	ability1Object = oSparkTower;
}
else if(global.ability2 == "sparkTower")
{
	ability2 = SummonSparkTower;
	ability2Object = oSparkTower;
}
else if(global.ability3 == "sparkTower")
{
	ability3 = SummonSparkTower;
	ability3Object = oSparkTower;
}

if(global.ability1 == "teleportingTower")
{
	ability1 = SummonTeleportingTower;
	ability1Object = oTeleportingTower;
}
else if(global.ability2 == "teleportingTower")
{
	ability2 = SummonTeleportingTower;
	ability2Object = oTeleportingTower;
}
else if(global.ability3 == "teleportingTower")
{
	ability3 = SummonTeleportingTower;
	ability3Object = oTeleportingTower;
}
