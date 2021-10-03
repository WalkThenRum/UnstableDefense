

if(frameCounter <5)
{
	image_index = 0;
}
else if (frameCounter <10)
{
	image_index = 1;
}
else if(frameCounter <frameTotal)
{
	image_index = 2;
}
else
{
	instance_destroy();
}

frameCounter = frameCounter +1;