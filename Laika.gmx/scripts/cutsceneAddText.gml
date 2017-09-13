//cutsceneAddText(cutsceneID,text)
var pos = argument0[? "evTypePos"];
var time = string_length(argument1) * room_speed / 32;
ds_map_add(argument0 , "evType" + string(pos), 0);
ds_map_add(argument0 , "evText" + string(pos), argument1);
ds_map_add(argument0 , "evStart"+ string(pos), argument0[? "timeline"]);
ds_map_add(argument0 , "evTime" + string(pos), time);
cutsceneAddUpdate(argument0 , time);
