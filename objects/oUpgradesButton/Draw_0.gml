if debug_mode draw_self();

draw_set_font(fnComicSans);
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(room==rmMain){
	text="<< Upgrades"
	goto=rmUpgrades
}

if(room==rmUpgrades){
	text="Back >>"
	goto=rmMain;
}

draw_text(x,y,text);
draw_set_valign(fa_top);