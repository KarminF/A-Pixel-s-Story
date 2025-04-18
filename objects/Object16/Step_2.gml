/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2532B271
/// @DnDArgument : "obj" "Spieler"
/// @DnDSaveInfo : "obj" "Spieler"
var l2532B271_0 = false;l2532B271_0 = instance_exists(Spieler);if(l2532B271_0){}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35652BC6
/// @DnDArgument : "expr" "Spieler.page_collected"
/// @DnDArgument : "var" "value_to_draw"
value_to_draw = Spieler.page_collected;