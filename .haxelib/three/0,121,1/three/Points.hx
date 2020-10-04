package three;

/**
	A class for displaying points. The points are rendered by the WebGLRenderer using gl.POINTS.
**/
@:jsRequire("three", "Points") extern class Points<TGeometry, TMaterial> extends Object3D {
	function new<TGeometry, TMaterial>(?geometry:TGeometry, ?material:TMaterial);
	@:optional
	var morphTargetInfluences : Array<Float>;
	@:optional
	var morphTargetDictionary : { };
	final isPoints : Bool;
	/**
		An instance of Geometry or BufferGeometry, where each vertex designates the position of a particle in the system.
	**/
	var geometry : TGeometry;
	/**
		An instance of Material, defining the object's appearance. Default is a PointsMaterial with randomised colour.
	**/
	var material : TMaterial;
	function updateMorphTargets():Void;
	function applyQuaternion(quaternion:Quaternion):Points<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Points<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Points<TGeometry, TMaterial>;
	function rotateX(angle:Float):Points<TGeometry, TMaterial>;
	function rotateY(angle:Float):Points<TGeometry, TMaterial>;
	function rotateZ(angle:Float):Points<TGeometry, TMaterial>;
	function translateOnAxis(axis:Vector3, distance:Float):Points<TGeometry, TMaterial>;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Points<TGeometry, TMaterial>;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Points<TGeometry, TMaterial>;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Points<TGeometry, TMaterial>;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Points<TGeometry, TMaterial>;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Points<TGeometry, TMaterial>;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Points<TGeometry, TMaterial>;
	function clone(?recursive:Bool):Points<TGeometry, TMaterial>;
	function copy(source:Points<TGeometry, TMaterial>, ?recursive:Bool):Points<TGeometry, TMaterial>;
	static var prototype : Points<Dynamic, Dynamic>;
}