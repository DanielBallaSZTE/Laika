var _x,_y;
for(i = 0; i < ds_grid_width(inv); i++) {
    _x = GW * .5 - (ds_grid_width(inv) * .5 - i) * sprite_get_width(sprInv);
    _y = GH * .8;
    draw_sprite(sprInv, 0, _x, _y);
    if(inv[# i,0] != -1) {
        draw_sprite_stretched(object_get_sprite(inv[# i, 0]), 0, _x+1, _y+1, 62, 62);
    }
}
