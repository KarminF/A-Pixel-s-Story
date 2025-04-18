/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0302261F
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "not" "1"
if(!(move_x == 0)){}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44977905
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "not" "1"
if(!(move_y == 0)){}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 55BE8D6A
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "num_iterations" "6"
/// @DnDArgument : "object" "tree"
/// @DnDSaveInfo : "object" "tree"
move_and_collide(move_x, move_y, tree,6,0,0,-1,-1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40A213F8
/// @DnDInput : 2
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left) "
/// @DnDArgument : "expr_1" "move_x * move_speed"
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "var_1" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check(vk_left) ;
move_x = move_x * move_speed;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 5698C6CC
/// @DnDArgument : "key" "vk_right"
var l5698C6CC_0;l5698C6CC_0 = keyboard_check_pressed(vk_right);if (l5698C6CC_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4223E2C3
	/// @DnDParent : 5698C6CC
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_speed"
	image_speed = 1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 442F7B01
	/// @DnDParent : 5698C6CC
	/// @DnDArgument : "soundid" "snd_walking"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_walking"
	audio_play_sound(snd_walking, 0, 1, 1.0, undefined, 1.0);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 31611923
/// @DnDArgument : "key" "vk_right"
var l31611923_0;l31611923_0 = keyboard_check_released(vk_right);if (l31611923_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EC11142
	/// @DnDParent : 31611923
	/// @DnDArgument : "var" "image_speed"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 377558A9
	/// @DnDParent : 31611923
	/// @DnDArgument : "soundid" "snd_walking"
	/// @DnDSaveInfo : "soundid" "snd_walking"
	audio_stop_sound(snd_walking);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 5C7FADDB
/// @DnDArgument : "key" "vk_left"
var l5C7FADDB_0;l5C7FADDB_0 = keyboard_check_pressed(vk_left);if (l5C7FADDB_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F07C06C
	/// @DnDParent : 5C7FADDB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_speed"
	image_speed = 1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 3C043EEF
	/// @DnDParent : 5C7FADDB
	/// @DnDArgument : "soundid" "snd_walking"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_walking"
	audio_play_sound(snd_walking, 0, 1, 1.0, undefined, 1.0);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 20EAE827
/// @DnDArgument : "key" "vk_left"
var l20EAE827_0;l20EAE827_0 = keyboard_check_released(vk_left);if (l20EAE827_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27B5DE6B
	/// @DnDParent : 20EAE827
	/// @DnDArgument : "var" "image_speed"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4D68957F
	/// @DnDParent : 20EAE827
	/// @DnDArgument : "soundid" "snd_walking"
	/// @DnDSaveInfo : "soundid" "snd_walking"
	audio_stop_sound(snd_walking);}