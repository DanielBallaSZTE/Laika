var dest_x = argument0;
var dest_y = argument1;

// Check if the given path is started
if (path_index = -1 && path_exists(path)) {
    path_delete(path);
}

// Check if the path exists
if (!path_exists(path)) {
    path = path_add();
}

// Assign the path
mp_grid_path(grid, path, x, y, dest_x, dest_y, true);

// Check if path is started
path_start(path, spd, "", true);

