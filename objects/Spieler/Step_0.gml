/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0302261F
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "not" "1"
if(!(move_x == 0)){}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 468747F2
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "not" "1"
if(!(move_y == 0)){}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 55BE8D6A
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "num_iterations" "6"
/// @DnDArgument : "object" "anfaenge_normal"
/// @DnDSaveInfo : "object" "anfaenge_normal"
move_and_collide(move_x, move_y, anfaenge_normal,6,0,0,-1,-1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40A213F8
/// @DnDInput : 4
/// @DnDArgument : "expr" " keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "expr_1" "move_x * move_speed"
/// @DnDArgument : "expr_2" "keyboard_check(vk_down) - keyboard_check(vk_up)"
/// @DnDArgument : "expr_3" "move_y * move_speed"
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "var_1" "move_x"
/// @DnDArgument : "var_2" "move_y"
/// @DnDArgument : "var_3" "move_y"
move_x =  keyboard_check(vk_right) - keyboard_check(vk_left);
move_x = move_x * move_speed;
move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
move_y = move_y * move_speed;