package three;

typedef XRPlane = {
	var orientation : String;
	var planeSpace : XRSpace;
	var polygon : Array<js.html.DOMPointReadOnly>;
	var lastChangedTime : Float;
};