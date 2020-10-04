package three;

@:jsRequire("three", "LightShadow") extern class LightShadow {
	function new(camera:Camera);
	var camera : Camera;
	var bias : Float;
	var normalBias : Float;
	var radius : Float;
	var mapSize : Vector2;
	var map : RenderTarget;
	var mapPass : RenderTarget;
	var matrix : Matrix4;
	var autoUpdate : Bool;
	var needsUpdate : Bool;
	function copy(source:LightShadow):LightShadow;
	function clone(?recursive:Bool):LightShadow;
	function toJSON():Dynamic;
	function getFrustum():Float;
	function updateMatrices(light:Light, ?viewportIndex:Float):Void;
	function getViewport(viewportIndex:Float):Vector4;
	function getFrameExtents():Vector2;
	static var prototype : LightShadow;
}