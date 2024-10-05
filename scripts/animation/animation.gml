/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5229815B
/// @DnDComment : Animasyon fonksiyonu.
/// @DnDArgument : "funcName" "animation"
function animation() 
	/// @DnDVersion : 1
	/// @DnDHash : 2AE6ECFE
	/// @DnDComment : Karakter hareket ediyor ise$(13_10)yürüme animasyonuna gir.
	/// @DnDParent : 5229815B
	/// @DnDArgument : "expr" "hMove != 0 or vMove != 0"
	if(hMove != 0 or vMove != 0)
		/// @DnDVersion : 1
		/// @DnDHash : 6EE45CB2
		/// @DnDParent : 2AE6ECFE
		/// @DnDArgument : "value" "sPlayerWalk"
		/// @DnDArgument : "instvar" "10"
		sprite_index = sPlayerWalk;

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5908786E
	/// @DnDComment : Karakter hareket etmiyor ise$(13_10)durma animasyonuna gir.
	/// @DnDParent : 5229815B
	else
		/// @DnDVersion : 1
		/// @DnDHash : 22B1D3C5
		/// @DnDParent : 5908786E
		/// @DnDArgument : "value" "sPlayerIdle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = sPlayerIdle;