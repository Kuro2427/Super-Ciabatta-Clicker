if(global.bred>=price) && (global.inventory[itemID]<stock){
	global.inventory[itemID]+=1;
	global.bps+=bps;
	global.bred-=price;
	price=round(basePrice*(global.inventory[itemID]+1));
	instance_create_depth(x+(sprite_width/2),y+(sprite_height/2),-10,oNumberToastie);
}