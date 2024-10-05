/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 200E24F0
/// @DnDComment : Basılan tuşları girdi olarak alır.
/// @DnDArgument : "funcName" "getInput"
function getInput() {	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 56BAEB9E
	/// @DnDParent : 200E24F0
	/// @DnDArgument : "key" "ord("A")"
	var l56BAEB9E_0;l56BAEB9E_0 = keyboard_check(ord("A"));if (l56BAEB9E_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51FEF309
		/// @DnDParent : 56BAEB9E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "left"
		left = 1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6D729614
	/// @DnDParent : 200E24F0
	/// @DnDArgument : "key" "ord("D")"
	var l6D729614_0;l6D729614_0 = keyboard_check(ord("D"));if (l6D729614_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A58C232
		/// @DnDParent : 6D729614
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "right"
		right = 1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5AAE441C
	/// @DnDParent : 200E24F0
	/// @DnDArgument : "key" "ord("W")"
	var l5AAE441C_0;l5AAE441C_0 = keyboard_check(ord("W"));if (l5AAE441C_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 66514AA3
		/// @DnDParent : 5AAE441C
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "up"
		up = 1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 69A71E6E
	/// @DnDParent : 200E24F0
	/// @DnDArgument : "key" "ord("S")"
	var l69A71E6E_0;l69A71E6E_0 = keyboard_check(ord("S"));if (l69A71E6E_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36A5012F
		/// @DnDParent : 69A71E6E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "down"
		down = 1;}}