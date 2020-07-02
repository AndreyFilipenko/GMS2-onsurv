/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(c_white);
if (type = 0) {
	draw_sprite_ext(gui_statusmess_back0,0,x,0,room_width,1,0,c_white,1);
} else {
	draw_sprite_ext(gui_statusmess_back1,0,x,0,room_width,1,0,c_white,1);
}
draw_text(room_width/2,4,text);