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

//Change sprite on upgrade
switch(global.currentUpgrade){
	case UPGRADES.CIABATTA:
		if(sprite_index!=sCiabattaBig) sprite_index=sCiabattaBig;
	break;
	
	case UPGRADES.LOAF:
		if(sprite_index!=sLoafBig) sprite_index=sLoafBig;
	break;
}