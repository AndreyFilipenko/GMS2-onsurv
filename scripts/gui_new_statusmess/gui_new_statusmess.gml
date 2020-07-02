
with (gui_statusmess) {
	instance_destroy(self);
}
with (instance_create_depth(0,0,0,gui_statusmess)) {
	text = argument0;
	type = argument1;
}