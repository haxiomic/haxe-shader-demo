package three;

@:jsRequire("three", "Font") extern class Font {
	function new(jsondata:Dynamic);
	var type : String;
	var data : String;
	function generateShapes(text:String, size:Float):Array<Shape>;
	static var prototype : Font;
}