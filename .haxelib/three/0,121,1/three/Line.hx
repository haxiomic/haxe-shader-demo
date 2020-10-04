package three;

@:jsRequire("three", "Line") extern class Line<TGeometry, TMaterial> extends Object3D {
	function new<TGeometry, TMaterial>(?geometry:TGeometry, ?material:TMaterial, ?mode:Float);
	var geometry : TGeometry;
	var material : TMaterial;
	final isLine : Bool;
	@:optional
	var morphTargetInfluences : Array<Float>;
	@:optional
	var morphTargetDictionary : { };
	function computeLineDistances():Line<TGeometry, TMaterial>;
	function updateMorphTargets():Void;
	function applyQuaternion(quaternion:Quaternion):Line<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Line<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Line<TGeometry, TMaterial>;
	function rotateX(angle:Float):Line<TGeometry, TMaterial>;
	function rotateY(angle:Float):Line<TGeometry, TMaterial>;
	function rotateZ(angle:Float):Line<TGeometry, TMaterial>;
	function translateOnAxis(axis:Vector3, distance:Float):Line<TGeometry, TMaterial>;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Line<TGeometry, TMaterial>;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Line<TGeometry, TMaterial>;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Line<TGeometry, TMaterial>;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Line<TGeometry, TMaterial>;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Line<TGeometry, TMaterial>;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Line<TGeometry, TMaterial>;
	function clone(?recursive:Bool):Line<TGeometry, TMaterial>;
	function copy(source:Line<TGeometry, TMaterial>, ?recursive:Bool):Line<TGeometry, TMaterial>;
	static var prototype : Line<Dynamic, Dynamic>;
}