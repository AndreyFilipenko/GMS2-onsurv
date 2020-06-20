/// @description Insert description here
// You can write your code in this editor

draw_set_halign(align);
var text_posx;
switch (align) {
	case fa_right: 
		text_posx = x+maxw;
	break;
	case fa_left: 
		text_posx = x;
	break;
	case fa_center: 
		text_posx = (x+maxw+x)/2;
	break;
}

var value_display = text;
if (active) {
	draw_rectangle_color(x,y,x+maxw,y+maxh,activeOutlineColor,activeOutlineColor,activeOutlineColor,activeOutlineColor,1);
	draw_rectangle_color(x,y,x+maxw,y+maxh,activeBackgroundColor,activeBackgroundColor,activeBackgroundColor,activeBackgroundColor,0);
} else {
	draw_rectangle_color(x,y,x+maxw,y+maxh,outlineColor,outlineColor,outlineColor,outlineColor,1);
	draw_rectangle_color(x,y,x+maxw,y+maxh,backgroundColor,backgroundColor,backgroundColor,backgroundColor,0);
}

draw_text(text_posx,y,text);
draw_text(room_width/2, room_height/2, "Old client game version. Please update the game.");