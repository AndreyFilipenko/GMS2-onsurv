/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.5);
draw_rectangle_color(0,0,room_width,room_height,back_color,back_color,back_color,back_color,0);
draw_set_alpha(1);
draw_self();
draw_set_halign(fa_center);
draw_text_color(x,y+34,text,c_yellow,c_yellow,c_yellow,c_yellow,1);