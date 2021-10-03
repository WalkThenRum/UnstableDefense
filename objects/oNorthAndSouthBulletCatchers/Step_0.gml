instance_place_list(x,y,oProjectile,list,false);

while(ds_list_empty(list) == false)
{
	var bullet = ds_list_find_value(list,0);
	instance_destroy(bullet);
	ds_list_delete(list,0);
}