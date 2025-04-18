/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 273ADD99
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)show_debug_message(string(x)+" "+string(y));$(13_10)$(13_10)// jump function$(13_10)if (keyboard_check_pressed(vk_space) && !jumping){$(13_10)	show_debug_message("jumping");$(13_10)	y -= 2;$(13_10)    vspeed = jump_speed;$(13_10)    jumping = true;$(13_10)}   $(13_10)  $(13_10)vspeed += gravity;$(13_10)$(13_10)if (y >= ground_y) {$(13_10)    y = ground_y;$(13_10)    vspeed = 0;$(13_10)    jumping = false; $(13_10)}$(13_10)$(13_10)y += vspeed;"
/// @description Execute Code
show_debug_message(string(x)+" "+string(y));

// jump function
if (keyboard_check_pressed(vk_space) && !jumping){
	show_debug_message("jumping");
	y -= 2;
    vspeed = jump_speed;
    jumping = true;
}   
  
vspeed += gravity;

if (y >= ground_y) {
    y = ground_y;
    vspeed = 0;
    jumping = false; 
}

y += vspeed;

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
/// @DnDArgument : "object" "anfaenge_normal"
/// @DnDSaveInfo : "object" "anfaenge_normal"
move_and_collide(move_x, move_y, anfaenge_normal,6,0,0,-1,-1);

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
	/// @DnDHash : 130042F9
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
	/// @DnDHash : 742E3FC9
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
	/// @DnDHash : 2D07EDB9
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
	/// @DnDHash : 0D9DA3E3
	/// @DnDParent : 20EAE827
	/// @DnDArgument : "soundid" "snd_walking"
	/// @DnDSaveInfo : "soundid" "snd_walking"
	audio_stop_sound(snd_walking);}