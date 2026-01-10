draw_set_colour(c_black);
draw_set_font(fnComicSans);
draw_set_halign(fa_center);

draw_text(room_width/2,16,"The bread bank");
draw_text(room_width/2,room_height-75,"("+string(global.shopPage)+"/"+string(global.maxShopPages)+")");


draw_set_halign(fa_left);
draw_text(10,room_height-42,"Account balance: "+string_thousands(global.bred)+" bre'd");

//Toggle pages
if(global.shopPage==1)
	layer_set_visible("Page1",true);
else layer_set_visible("Page1",false);

if(global.shopPage==2)
	layer_set_visible("Page2",true);
else layer_set_visible("Page2",false);