package three;

/**
	Event object.
**/
typedef Event = {
	var type : String;
	@:optional
	var target : Dynamic;
};