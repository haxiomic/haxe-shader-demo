package three;

@:jsRequire("three", "WebXRManager") extern class WebXRManager extends EventDispatcher {
	function new(renderer:Dynamic, gl:js.html.webgl.RenderingContext);
	var enabled : Bool;
	var isPresenting : Bool;
	function getController(id:Float):Group;
	function getControllerGrip(id:Float):Group;
	function setFramebufferScaleFactor(value:Float):Void;
	function setReferenceSpaceType(value:XRReferenceSpaceType):Void;
	function getReferenceSpace():XRReferenceSpace;
	function getSession():XRSession;
	function setSession(value:XRSession):Void;
	function getCamera(camera:Camera):Camera;
	function setAnimationLoop(callback:XRFrameRequestCallback):Void;
	function dispose():Void;
	static var prototype : WebXRManager;
}