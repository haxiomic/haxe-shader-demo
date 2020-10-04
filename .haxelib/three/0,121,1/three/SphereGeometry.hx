package three;

@:jsRequire("three", "SphereGeometry") extern class SphereGeometry extends Geometry {
	function new(?radius:Float, ?widthSegments:Float, ?heightSegments:Float, ?phiStart:Float, ?phiLength:Float, ?thetaStart:Float, ?thetaLength:Float);
	var parameters : {
		var radius : Float;
		var widthSegments : Float;
		var heightSegments : Float;
		var phiStart : Float;
		var phiLength : Float;
		var thetaStart : Float;
		var thetaLength : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):SphereGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():SphereGeometry;
	function copy(source:Geometry):SphereGeometry;
	static var prototype : SphereGeometry;
}