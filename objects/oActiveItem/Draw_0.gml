draw_set_colour(c_black);
draw_set_font(fnComicSans);
draw_set_halign(fa_left);

//Only execute if user has item
if(global.inventory[itemID]>0){
	draw_self();
	draw_text(x-10,y+sprite_get_height(sprite_index)-15,"x"+string(global.inventory[itemID]));
	
	//Give bred
	if(global.timer==0){
		global.bred+=(bps*global.inventory[itemID]);
		var t = instance_create_depth(x+(sprite_width/2),y+(sprite_height/2),-10,oNumberToastie);
		t.value = bps*global.inventory[itemID]
		
		for(i=0; i<global.inventory[itemID]; i++){
			if(instance_count<1000) instance_create_layer(random_range(0,room_width),-32,"BGBredRain",oBredPart);
		}
	}
}