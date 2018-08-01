///get_input();
keyForward = keyboard_check(ord("W")) | keyboard_check(vk_up);
keyStrafeLeft = keyboard_check(ord("A")) | keyboard_check(vk_left);
keyStrafeRight = keyboard_check(ord("D")) | keyboard_check(vk_right);
keyBack = keyboard_check(ord("S")) | keyboard_check(vk_down);

keyInteract = keyboard_check_pressed(ord("E"));
keySetMine = keyboard_check(ord("F"));