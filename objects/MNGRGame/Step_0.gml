if(debug_mode){
	if(keyboard_check_pressed(vk_f1)){
		if(is_debug_overlay_open()){
			show_debug_overlay(false);
			show_debug_log(false);
		}
		else{
			show_debug_overlay(true);
			show_debug_log(true);
		}
	}
}

//Show random ticker
if(global.bred>=nextRandText)&&(!instance_exists(oNewsTicker))&&(room==rmMain){
	var n=instance_create_depth(0,0,-100,oNewsTicker);
	n.text=news[round(random_range(0,array_length(news)-1))];
	if(global.bps>0) nextRandText=global.bred+int64(random_range(5*global.bps,100*global.bps));
	else nextRandText=round(global.bred*1.5);
}

//Timer and itm events
if(global.timer>0){
	global.timer--;
}else{
	global.timer=60;
	show_debug_message("Instance count: "+string(instance_count));
}

//Apply upgrade buffs

switch(global.currentUpgrade){
	case UPGRADES.CIABATTA:
		global.bredPerClick=1
	break;
	
	case UPGRADES.LOAF:
		global.bredPerClick=10;	
	break;
}