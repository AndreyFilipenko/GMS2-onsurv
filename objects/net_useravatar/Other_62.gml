/// @description Insert description here
// You can write your code in this editor

if (async_load[? "id"] = POST_avatar) {
	var json = async_load[? "result"];
	var map = json_decode(json);
	if (ds_map_exists(map, "operationStatus")) {
		var operationStatus = map[? "operationStatus"];
		if (operationStatus = "SUCCESSFUL_OPERATION") {
			var mapBody = map[? "body"];
		} else if (operationStatus = "USER_AVATAR_NOT_EXISTS") {
			
		} else if (operationStatus = "INTERNAL_ERROR") {
			
		}
	}
	forms_unlock();
}
