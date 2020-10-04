package three;

typedef XRSession = {
	var addEventListener : haxe.Constraints.Function;
	var removeEventListener : haxe.Constraints.Function;
	function requestReferenceSpace(type:XRReferenceSpaceType):js.lib.Promise<XRReferenceSpace>;
	function updateRenderState(renderStateInit:XRRenderStateInit):js.lib.Promise<Void>;
	function requestAnimationFrame(callback:XRFrameRequestCallback):Float;
	function cancelAnimationFrame(id:Float):Void;
	function end():js.lib.Promise<Void>;
	var renderState : XRRenderState;
	var inputSources : Array<XRInputSource>;
	var environmentBlendMode : XREnvironmentBlendMode;
	var visibilityState : XRVisibilityState;
	function requestHitTestSource(options:XRHitTestOptionsInit):js.lib.Promise<XRHitTestSource>;
	function requestHitTestSourceForTransientInput(options:XRTransientInputHitTestOptionsInit):js.lib.Promise<XRTransientInputHitTestSource>;
	function requestHitTest(ray:XRRay, referenceSpace:XRReferenceSpace):js.lib.Promise<Array<XRHitResult>>;
	function updateWorldTrackingState(options:{ @:optional var planeDetectionState : { var enabled : Bool; }; }):Void;
};