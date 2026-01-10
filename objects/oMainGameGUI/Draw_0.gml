draw_set_colour(c_black);
draw_set_font(fnComicSans);
draw_set_halign(fa_center);

draw_text_transformed(room_width/2,8,string_thousands(global.bred)+" bre'd",1.2,1.2,0);
draw_set_colour(c_dkgray);
draw_text(room_width/2,35,"("+string_thousands(global.bps)+" per second)")