if (mouse_check_button(mb_right))
{
    // Make it stop at the middle of the sprite.
    if (x < mouse_x)
    {
        dest_x = mouse_x + sprite_width / 2;
    }
    else
    {
        dest_x = mouse_x - sprite_width / 2;
    }
    
    if (y < mouse_y)
    {
        dest_y = mouse_y + sprite_height / 2;
    }
    else
    {
        dest_y = mouse_y - sprite_height / 2;
    }
}

if (!(distance_to_point(dest_x, dest_y) <= 2))
{
    move_towards_point(dest_x, dest_y, 3);
}
else
{
    speed = 0;
}
