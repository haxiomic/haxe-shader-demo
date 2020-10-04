package three;

typedef XRInputSource = {
	final handedness : XRHandedness;
	final targetRayMode : XRTargetRayMode;
	final targetRaySpace : XRSpace;
	@:optional
	final gripSpace : XRSpace;
	final profiles : Array<String>;
	final gamepad : js.html.Gamepad;
	@:optional
	final hand : XRHand;
};