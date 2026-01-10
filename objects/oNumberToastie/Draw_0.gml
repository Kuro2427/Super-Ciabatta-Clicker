draw_set_colour(c_black);
draw_set_font(fnComicSans);
draw_set_halign(fa_center);

if(value>0){
	var formattedStr="+"+string(value);
}
else{
	var formattedStr="-"+string(value);
}

y-=2;

if(draw_get_alpha()>0){
	a-=spd;
	draw_set_alpha(a);
}
else{
	instance_destroy();
}

draw_text(x,y,formattedStr);

draw_set_alpha(1);