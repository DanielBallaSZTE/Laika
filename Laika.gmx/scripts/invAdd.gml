for(i=0; i<ds_grid_width(inv); i++) {
    if (inv[# i,0] == argument0) {
        inv[# i,1] += argument1;
        return true;
    }
}
for(i=0; i<ds_grid_width(inv); i++) {
    if (inv[# i,0] == -1) {
        inv[# i,0] = argument0;
        inv[# i,1] = argument1;
        return true;
    }
}
return false;
