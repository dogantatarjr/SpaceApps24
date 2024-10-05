/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 763CE56C
/// @DnDArgument : "funcName" "calculateMovement"
function calculateMovement() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59F41548
	/// @DnDComment : Dikey ve yatay eksenlerdeki hareketin hesabı.
	/// @DnDInput : 2
	/// @DnDParent : 763CE56C
	/// @DnDArgument : "expr" "right - left"
	/// @DnDArgument : "expr_1" "down - up"
	/// @DnDArgument : "var" "hMove"
	/// @DnDArgument : "var_1" "vMove"
	hMove = right - left;
	vMove = down - up;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FFC1787
	/// @DnDParent : 763CE56C
	/// @DnDArgument : "var" "hMove"
	/// @DnDArgument : "not" "1"
	if(!(hMove == 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E3547C7
		/// @DnDParent : 1FFC1787
		/// @DnDArgument : "expr" "hMove"
		/// @DnDArgument : "var" "facing"
		facing = hMove;}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 12251784
	/// @DnDComment : x-y eksende hareket var ise.
	/// @DnDParent : 763CE56C
	/// @DnDArgument : "expr" "(hMove != 0) or (vMove != 0)"
	if((hMove != 0) or (vMove != 0)){	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5DFE0837
		/// @DnDComment : Bloğun gideceği yönü tayin edip$(13_10)o yönde belirli bir hızda aldığı$(13_10)yolun hesabını yapıyoruz.
		/// @DnDParent : 12251784
		/// @DnDArgument : "var" "_dir"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "point_direction"
		/// @DnDArgument : "arg" "0, 0, hMove, vMove"
		var _dir = point_direction(0, 0, hMove, vMove);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2C9084B7
		/// @DnDParent : 12251784
		/// @DnDArgument : "function" "lengthdir_x"
		/// @DnDArgument : "arg" "walkSpeed, _dir"
		lengthdir_x(walkSpeed, _dir);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7143EFAD
		/// @DnDParent : 12251784
		/// @DnDArgument : "function" "lengthdir_y"
		/// @DnDArgument : "arg" "walkSpeed, _dir"
		lengthdir_y(walkSpeed, _dir);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5CDCEE81
		/// @DnDComment : Bloğun buna göre $(13_10)koordinat değişimi.
		/// @DnDInput : 2
		/// @DnDParent : 12251784
		/// @DnDArgument : "value" "hMove"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "value_1" "vMove"
		/// @DnDArgument : "value_relative_1" "1"
		/// @DnDArgument : "instvar_1" "1"
		x += hMove;
		y += vMove;}}