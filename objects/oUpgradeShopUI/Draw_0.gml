draw_set_colour(c_black);
draw_set_font(fnComicSans);
draw_set_halign(fa_center);

draw_text(room_width/2,16,"Upgrades");
draw_text(room_width/2,room_height-75,"("+string(global.upgradePage)+"/"+string(global.maxUpgradePages)+")");


draw_set_halign(fa_right);
draw_text(room_width-10,room_height-42,"Account balance: "+string_thousands(global.bred)+" bre'd");
draw_set_halign(fa_left);

//Toggle pages
if(global.upgradePage==1)
	layer_set_visible("Page1",true);
else layer_set_visible("Page1",false);

if(global.upgradePage==2)
	layer_set_visible("Page2",true);
else layer_set_visible("Page2",false);