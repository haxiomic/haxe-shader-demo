package three;

@:jsRequire("three", "WebGLProgram") extern class WebGLProgram {
	function new(renderer:WebGLRenderer, cacheKey:String, parameters:Dynamic);
	var name : String;
	var id : Float;
	var cacheKey : String;
	var usedTimes : Float;
	var program : Dynamic;
	var vertexShader : WebGLShader;
	var fragmentShader : WebGLShader;
	var uniforms : Dynamic;
	var attributes : Dynamic;
	function getUniforms():WebGLUniforms;
	function getAttributes():Dynamic;
	function destroy():Void;
	static var prototype : WebGLProgram;
}