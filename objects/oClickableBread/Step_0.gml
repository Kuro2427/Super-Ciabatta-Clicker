//Shrink animation
if(animationState==-1){
	if(image_xscale>0.8){
		image_xscale-=animationSpeed;
		image_yscale-=animationSpeed;
	}else{
		animationState=1;
	}
}

//Grow animation
if(animationState==1){
	if(image_xscale<1){
		image_xscale+=animationSpeed;
		image_yscale+=animationSpeed;
	}else{
		animationState=0;
	}
}

//Wave animation
y = anchor_y + (sin(timer) * hover_range);
timer+=hover_speed;