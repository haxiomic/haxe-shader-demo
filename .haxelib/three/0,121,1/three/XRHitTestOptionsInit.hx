package three;

typedef XRHitTestOptionsInit = {
	var space : XRSpace;
	@:optional
	var offsetRay : XRRay;
	@:optional
	var entityTypes : Array<XRHitTestTrackableType>;
};