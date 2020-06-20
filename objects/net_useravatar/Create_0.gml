/// @description Insert description here
// You can write your code in this editor

var header = ds_map_create();
ds_map_add(header, "Content-Type", "application/json");
var body = ds_map_create();
ds_map_add(body,"securityToken", global.user_token);
var json = json_encode(body);
POST_avatar = http_request(global.server_url+"/avatar","POST",header,json);
forms_lock();
