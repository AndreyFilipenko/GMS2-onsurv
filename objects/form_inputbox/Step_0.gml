/// @description Insert description here
// You can write your code in this editor
if (!forms_locked()) {
	if (active) {
		if (keyboard_check_pressed(vk_anykey) and !keyboard_check_pressed(vk_enter)) {
			value += keyboard_lastchar;
			keyboard_lastkey = -1;
		}
		if (keyboard_check_pressed(vk_backspace)) {
			value = string_copy(value,0,string_length(value)-2);
		}
	}
}