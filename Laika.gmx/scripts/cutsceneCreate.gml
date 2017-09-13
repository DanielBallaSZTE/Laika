var tmp = ds_map_create();
ds_map_add( tmp, "timeline", 0);
ds_map_add( tmp, "evTypePos", 0);
ds_map_add( tmp, "end", false);
ds_map_add( tmp, "liney", 0);
cutsceneAddDelay( tmp, 1);
return tmp;
