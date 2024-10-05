/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 40D4CA72
/// @DnDArgument : "funcName" "collision"
function collision() {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BB0CCD3
	/// @DnDComment : Bu üç değişken ile bloğu duvarların$(13_10)arasında tutuyoruz (Hedef değerler ile).
	/// @DnDInput : 2
	/// @DnDParent : 40D4CA72
	/// @DnDArgument : "var" "_tX"
	/// @DnDArgument : "value" "x"
	/// @DnDArgument : "var_1" "_tY"
	/// @DnDArgument : "value_1" "y"
	var _tX = x;
	var _tY = y;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F52427C
	/// @DnDInput : 2
	/// @DnDParent : 40D4CA72
	/// @DnDArgument : "expr" "xprevious"
	/// @DnDArgument : "expr_1" "yprevious"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78A0F98E
	/// @DnDComment : Bu geçici değişken ise$(13_10)bloğun duvar ile arasında$(13_10)boşluk bıraklımamasını sağlıyor.
	/// @DnDInput : 2
	/// @DnDParent : 40D4CA72
	/// @DnDArgument : "var" "_disX"
	/// @DnDArgument : "value" "abs(_tX - x)"
	/// @DnDArgument : "var_1" "_disY"
	/// @DnDArgument : "value_1" "abs(_tY - y)"
	var _disX = abs(_tX - x);
	var _disY = abs(_tY - y);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 1A990B01
	/// @DnDComment : X ekseninde gidebildiğimiz kadar gitmek için$(13_10)(Bloğun akıcılığını sağlıyor).
	/// @DnDParent : 40D4CA72
	/// @DnDArgument : "times" "_disX"
	repeat(_disX){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 6987D9C4
		/// @DnDParent : 1A990B01
		/// @DnDArgument : "x" "sign(_tX - x)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "oHouse"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "oHouse"
		var l6987D9C4_0 = instance_place(x + sign(_tX - x), y + 0, [oHouse]);if (!(l6987D9C4_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E16EB62
			/// @DnDParent : 6987D9C4
			/// @DnDArgument : "expr" "sign(_tX - x)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += sign(_tX - x);}}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 69268763
	/// @DnDComment : Y ekseninde gidebildiğimiz kadar gitmek için
	/// @DnDParent : 40D4CA72
	/// @DnDArgument : "times" "_disY"
	repeat(_disY){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 12300FE6
		/// @DnDParent : 69268763
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sign(_tY - y)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "oHouse"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "oHouse"
		var l12300FE6_0 = instance_place(x + 0, y + sign(_tY - y), [oHouse]);if (!(l12300FE6_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 29EC4DDD
			/// @DnDParent : 12300FE6
			/// @DnDArgument : "expr" "sign(_tY - y)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += sign(_tY - y);}}}