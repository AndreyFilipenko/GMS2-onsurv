/// @description Insert description here
// You can write your code in this editor

version = "updating..."
//server_url = "https://gms2server.herokuapp.com";
global.server_url = "http://127.0.0.1:8080";

global.user_token = -1;
GET_version = http_get(global.server_url + "/version");
POST_reg = -1;
POST_login = -1;
forms_lock();