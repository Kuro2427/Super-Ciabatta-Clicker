if(animationState==0){
	animationState=-1;
	global.bred+=global.bredPerClick;
	var t = instance_create_depth(x,y,-100,oNumberToastie);
	t.value=global.bredPerClick;
	
	for(i=0; i<global.bredPerClick; i++){
		if(instance_number(oBredPart)<1000) instance_create_layer(random_range(0,room_width),-32,"BGBredRain",oBredPart);
	}
	
}