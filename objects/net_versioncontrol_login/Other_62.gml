/// @description Insert description here
// You can write your code in this editor
if (async_load[? "id"] = GET_version) {
	var json = async_load[? "result"];
	var map = json_decode(json);
	if (ds_map_exists(map, "version")) {
		version = map[? "version"];
	}
	forms_unlock();
	if (version != GM_version) {
		room_goto(oldVersion);
	}
}
if (async_load[? "id"] = POST_reg) {
	var json = async_load[? "result"];
	var map = json_decode(json);
	if (ds_map_exists(map, "operationStatus")) {
		var operationStatus = map[? "operationStatus"];
		if (operationStatus == "SUCCESSFUL_OPERATION") {
			gui_new_statusmess("Succesful registration!", 1);
		} else {
			gui_new_statusmess("Failed registration!", 0);
		}
	}
	forms_unlock();
}
if (async_load[? "id"] = POST_login) {
	var json = async_load[? "result"];
	var map = json_decode(json);
	if (map[? "operationStatus"] == "SUCCESSFUL_OPERATION") {
		var body = map[? "body"]
		global.user_token = body[? "securityToken"];
		show_debug_message(global.user_token);
		room_goto(mainMenu);
	} else {
		gui_new_statusmess("Wrong login!", 0);
		show_debug_message(map[? "operationStatus"])
	}
	forms_unlock();
}