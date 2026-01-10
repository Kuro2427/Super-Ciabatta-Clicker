draw_set_colour(c_black);
draw_set_font(fnComicSans);
draw_set_halign(fa_left);
draw_set_alpha(1);

x-=spd;

draw_text(x,y,text);

if(x<(0-string_width(text))){
	instance_destroy();
}