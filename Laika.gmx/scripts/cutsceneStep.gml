//Return true when the cutscene ends
var pos = argument0[? "evTypePos" ],csceneSpd = 24;
if( argument0[? "end" ] ) {
    argument0[? "liney" ] -= max(1 , argument0[? "liney" ] / csceneSpd);
    if(argument0[? "liney" ] <= 0) {
        view_wview[0] = 1024;
        view_hview[0] = 768;
        zoom = 1;
        return true;
    }
} else {
    if(argument0[? "liney"] < CUTSCENE_HEIGHT ) {
        argument0[? "liney"] += max( 3, (CUTSCENE_HEIGHT - argument0[? "liney"] ) / csceneSpd);
    } else {
        argument0[? "timeline" ]++;
        if(argument0[? "evTime" + string(pos)]+argument0[? "evStart" + string(pos) ] < argument0[? "timeline"] ) {
            pos++;
            if(ds_map_exists(argument0 , "evType" + string(pos))) {
                argument0[? "evTypePos"]= pos;
            } else {
                argument0[? "end"] = true;
            }
        }
        switch(argument0[? "evType" + string(pos)]) {
            case 0: //text
            break;
            case 1: //Cam-move
                view_xview[0] += lengthdir_x(argument0[? "evToSpd" +string( pos )],argument0[? "evToDir"+string( pos ) ] );
                view_yview[0] += lengthdir_y(argument0[? "evToSpd" +string( pos )],argument0[? "evToDir"+string( pos ) ] );
            break;
            case 2: //Set cam
                zoom = argument0[? "evZoom" + string( pos )];
                view_xview[0] = argument0[? "evToX" + string( pos )];
                view_yview[0] = argument0[? "evToY" + string( pos )];
                view_wview[0] = 1024 /zoom;
                view_hview[0] = 768 / zoom;
            break;
        }
        
    }
}
return false;
