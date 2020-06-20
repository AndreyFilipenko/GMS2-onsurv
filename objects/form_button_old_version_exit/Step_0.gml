/// @description Insert description here
// You can write your code in this editor
if (!forms_locked()) {
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+maxw,y+maxh) {
		active = true;
	} else {
		active = false;
	}
}