/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(x,y,x+maxw,y+maxh,outlineColor,outlineColor,outlineColor,outlineColor,1);
draw_rectangle_color(x,y,x+maxw,y+maxh,backgroundColor,backgroundColor,backgroundColor,backgroundColor,0);

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
var value_display = value;
if (active) {
	draw_text(text_posx,y,value_display+"|");

} else {
	draw_set_alpha(0.5);
	if (value_display != "") {
		draw_text(text_posx,y,value_display);
	} else {
		draw_text(text_posx,y,default_value);
	}
	draw_set_alpha(1);
}