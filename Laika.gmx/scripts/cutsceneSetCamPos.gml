var pos = argument0[? "evTypePos" ];
ds_map_add(argument0, "evType" + string(pos), 2);
ds_map_add(argument0, "evToX" + string(pos), argument1);
ds_map_add(argument0, "evToY" + string(pos), argument2);
ds_map_add(argument0, "evStart" + string(pos), argument0[? "timeline"]);
ds_map_add(argument0, "evTime" + string(pos), 1);
ds_map_add(argument0, "evZoom" + string(pos), argument3);
cutsceneAddUpdate(argument0 , 1);
