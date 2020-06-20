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
	var operationStatus = "-1";
	if (ds_map_exists(map, "operationStatus")) {
		operationStatus = map[? "operationStatus"];
	}
	forms_unlock();
}
if (async_load[? "id"] = POST_login) {
	var json = async_load[? "result"];
	var map = json_decode(json);
	if (map[? "operationStatus"] == "success") {
		global.user_token = map[? "securityToken"];
		show_debug_message(global.user_token);
		room_goto(mainMenu);
	} else {
		show_debug_message(map[? "operationStatus"])
	}
	forms_unlock();
}