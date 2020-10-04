package three;

@:jsRequire("three", "XRHand") extern class XRHand extends Array<XRJointSpace> {
	function new();
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:XRJointSpace, b:XRJointSpace) -> Float):XRHand;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:XRJointSpace, ?start:Float, ?end:Float):XRHand;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):XRHand;
	static var prototype : XRHand;
	static final WRIST : Int;
	static final THUMB_METACARPAL : Int;
	static final THUMB_PHALANX_PROXIMAL : Int;
	static final THUMB_PHALANX_DISTAL : Int;
	static final THUMB_PHALANX_TIP : Int;
	static final INDEX_METACARPAL : Int;
	static final INDEX_PHALANX_PROXIMAL : Int;
	static final INDEX_PHALANX_INTERMEDIATE : Int;
	static final INDEX_PHALANX_DISTAL : Int;
	static final INDEX_PHALANX_TIP : Int;
	static final MIDDLE_METACARPAL : Int;
	static final MIDDLE_PHALANX_PROXIMAL : Int;
	static final MIDDLE_PHALANX_INTERMEDIATE : Int;
	static final MIDDLE_PHALANX_DISTAL : Int;
	static final MIDDLE_PHALANX_TIP : Int;
	static final RING_METACARPAL : Int;
	static final RING_PHALANX_PROXIMAL : Int;
	static final RING_PHALANX_INTERMEDIATE : Int;
	static final RING_PHALANX_DISTAL : Int;
	static final RING_PHALANX_TIP : Int;
	static final LITTLE_METACARPAL : Int;
	static final LITTLE_PHALANX_PROXIMAL : Int;
	static final LITTLE_PHALANX_INTERMEDIATE : Int;
	static final LITTLE_PHALANX_DISTAL : Int;
	static final LITTLE_PHALANX_TIP : Int;
}