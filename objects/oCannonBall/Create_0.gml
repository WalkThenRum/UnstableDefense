/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

audio_play_sound(sndCannon,6,false);

list = ds_list_create();

bulletXDirection = mouse_x;
bulletYDirection = mouse_y;

move_towards_point(bulletXDirection,bulletYDirection,5);