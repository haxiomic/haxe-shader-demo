package three.src.geometries.extrudegeometry;

typedef ExtrudeGeometryOptions = {
	@:optional
	var curveSegments : Float;
	@:optional
	var steps : Float;
	@:optional
	var depth : Float;
	@:optional
	var bevelEnabled : Bool;
	@:optional
	var bevelThickness : Float;
	@:optional
	var bevelSize : Float;
	@:optional
	var bevelOffset : Float;
	@:optional
	var bevelSegments : Float;
	@:optional
	var extrudePath : three.Curve<three.Vector3>;
	@:optional
	var UVGenerator : UVGenerator;
};