package three;

typedef XRHitTestResult = {
	function getPose(baseSpace:XRSpace):Null<XRPose>;
	@:optional
	function createAnchor(pose:XRRigidTransform):js.lib.Promise<XRAnchor>;
};