var GRID_X = 32;
var GRID_Y = 32;

grid = mp_grid_create(0, 0, room_width / GRID_X, room_height / GRID_Y, GRID_X, GRID_Y);
path = path_add();
mp_grid_add_instances(grid, obj_structure, 0);
