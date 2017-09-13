var pos = argument0[? "evTypePos" ], gW = display_get_gui_width(), gH = display_get_gui_height();
draw_set_color( c_black );
draw_rectangle( 0, 0, gW, argument0[? "liney"], false);
draw_rectangle( 0, gH, gW, gH-argument0[? "liney"], false);
if( cutsceneReady( cut1 ) ) {
    draw_set_color( c_white );
    draw_set_halign( fa_center );
    draw_set_valign( fa_middle );
    switch(argument0[? "evType" + string( pos ) ] ) {
        case 0: //Text
            draw_text( gW*.5, gH*.95, argument0[? "evText" + string( pos ) ] );
        break;
        case 1:
        break;
    }
    draw_set_halign( fa_left );
    draw_set_valign( fa_top );
}

