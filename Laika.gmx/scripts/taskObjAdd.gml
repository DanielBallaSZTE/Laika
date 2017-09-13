var map;
ds_list_add(taskObj,ds_map_create());
map=taskObj[| ds_list_size(taskObj)-1];

ds_map_add(map,"type",argument[0]);
switch(argument[0]) {
    case 0:
    break;
    case 1:
    break;
}
