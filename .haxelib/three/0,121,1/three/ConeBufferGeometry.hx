package three;

@:jsRequire("three", "ConeBufferGeometry") extern class ConeBufferGeometry extends CylinderBufferGeometry {
	function new(?radius:Float, ?height:Float, ?radialSegments:Float, ?heightSegments:Float, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float);
	function clone():ConeBufferGeometry;
	function copy(source:BufferGeometry):ConeBufferGeometry;
	static var prototype : ConeBufferGeometry;
}