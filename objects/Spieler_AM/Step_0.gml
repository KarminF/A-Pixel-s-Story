/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0302261F
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "not" "1"
if(!(move_x == 0)){}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 55BE8D6A
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "num_iterations" "6"
/// @DnDArgument : "object" "Umgebung"
/// @DnDSaveInfo : "object" "Umgebung"
move_and_collide(move_x, move_y, Umgebung,6,0,0,-1,-1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40A213F8
/// @DnDInput : 2
/// @DnDArgument : "expr" " keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "expr_1" "move_x * move_speed"
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "var_1" "move_x"
move_x =  keyboard_check(vk_right) - keyboard_check(vk_left);
move_x = move_x * move_speed;