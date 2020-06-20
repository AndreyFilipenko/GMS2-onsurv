/// @description Insert description here
// You can write your code in this editor
var header = ds_map_create();

ds_map_add(header, "Content-Type", "application/json");
var body = ds_map_create();
ds_map_add(body,"login", forms_input_get_value("login"));
ds_map_add(body,"password", forms_input_get_value("password"));
var json = json_encode(body);
net_versioncontrol_login.POST_login = http_request(global.server_url+"/login","POST",header,json);
forms_lock();