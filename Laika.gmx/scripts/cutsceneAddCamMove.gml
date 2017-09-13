//cutsceneAddCamMove(cutsceneID,toX,toY,spd)
var time, pos, toX = argument1,toY = argument2, toSpd = argument3;
pos = argument0[? "evTypePos" ];
time = point_distance( 0 , 0 , toX , toY ) / toSpd;
ds_map_add( argument0 , "evType" + string( pos ) , 1 );
ds_map_add( argument0 , "evStart" + string( pos ) , argument0[? "timeline" ] );
ds_map_add( argument0 , "evTime" + string( pos ) , time );

ds_map_add( argument0, "evToDir" + string( pos ) , point_direction( 0 , 0 , toX , toY ) );
ds_map_add( argument0, "evToSpd" + string( pos ) , toSpd );
cutsceneAddUpdate( argument0 , time );
