if(global.bred>=price) && (global.currentUpgrade<=itemID){
	global.currentUpgrade=itemID;
	global.bred-=price;
	instance_create_depth(x+(sprite_width/2),y+(sprite_height/2),-10,oNumberToastie);
}