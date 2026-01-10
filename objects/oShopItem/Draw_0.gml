draw_self();

draw_set_colour(c_black);
draw_set_font(fnComicSans);
draw_set_halign(fa_left);

//Draw text and description
draw_text(textX,y,name);
draw_text(textX,y+25,description);
draw_text(textX,y+25+25,"+"+string(bps)+" BPS (bre'd per second)")
draw_text(textX,y+25+25+25,"Price: "+string(price)+" bre'd");

if(global.bred>=price){
	image_index=0;
}

if(global.bred<price){
	image_index=1;
}

if(global.inventory[itemID]==stock){
	image_index=2;
}