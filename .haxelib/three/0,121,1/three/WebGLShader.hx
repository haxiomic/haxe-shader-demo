package three;

@:jsRequire("three", "WebGLShader") extern class WebGLShader {
	function new(gl:js.html.webgl.RenderingContext, type:String, string:String);
	static var prototype : WebGLShader;
}