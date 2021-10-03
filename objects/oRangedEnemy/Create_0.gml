/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

baseMoveSpeed = 2;
currentMoveSpeed = baseMoveSpeed;


powerLevel = 8;

moveTimer = 0;
attacking = false;
justAttacked = false;
attackCone = noone;
attackTimer = 30;
attackingTimer = 15;

destinationPointX = random_range(116,1043);
destinationPointY = random_range(116,623);

