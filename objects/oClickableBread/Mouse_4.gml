if(animationState==0){
	animationState=-1;
	global.bred+=global.bredPerClick;
	instance_create_depth(x,y,-100,oNumberToastie);
	instance_create_layer(random_range(0,room_width),-32,"BGBredRain",oBredPart);
}