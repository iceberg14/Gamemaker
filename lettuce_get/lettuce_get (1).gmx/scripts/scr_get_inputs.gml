// Player Input
x_dir = keyboard_check(vk_right) - keyboard_check(vk_left)
jump = keyboard_check_pressed(ord("X"));
jump_held = keyboard_check(ord("X"));
down = keyboard_check(vk_down);
up = keyboard_check(vk_up);
if shell_on_player == 1 throw = keyboard_check_pressed(ord("C"));
else if shell_on_player == 0 throw = 0;
