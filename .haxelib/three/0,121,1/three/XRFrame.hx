package three;

typedef XRFrame = {
	final session : XRSession;
	function getViewerPose(referenceSpace:XRReferenceSpace):Null<XRViewerPose>;
	function getPose(space:XRSpace, baseSpace:XRSpace):Null<XRPose>;
	function getHitTestResults(hitTestSource:XRHitTestSource):Array<XRHitTestResult>;
	function getHitTestResultsForTransientInput(hitTestSource:XRTransientInputHitTestSource):Array<XRTransientInputHitTestResult>;
	@:optional
	var trackedAnchors : XRAnchorSet;
	function createAnchor(pose:XRRigidTransform, space:XRSpace):js.lib.Promise<XRAnchor>;
	var worldInformation : {
		@:optional
		var detectedPlanes : XRPlaneSet;
	};
	function getJointPose(joint:XRJointSpace, baseSpace:XRSpace):XRJointPose;
};