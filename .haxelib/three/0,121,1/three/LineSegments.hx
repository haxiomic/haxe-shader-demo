package three;

@:jsRequire("three", "LineSegments") extern class LineSegments<TGeometry, TMaterial> extends Line<TGeometry, TMaterial> {
	function new<TGeometry, TMaterial>(?geometry:TGeometry, ?material:TMaterial);
	final isLineSegments : Bool;
	function computeLineDistances():LineSegments<TGeometry, TMaterial>;
	function applyQuaternion(quaternion:Quaternion):LineSegments<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):LineSegments<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):LineSegments<TGeometry, TMaterial>;
	function rotateX(angle:Float):LineSegments<TGeometry, TMaterial>;
	function rotateY(angle:Float):LineSegments<TGeometry, TMaterial>;
	function rotateZ(angle:Float):LineSegments<TGeometry, TMaterial>;
	function translateOnAxis(axis:Vector3, distance:Float):LineSegments<TGeometry, TMaterial>;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):LineSegments<TGeometry, TMaterial>;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):LineSegments<TGeometry, TMaterial>;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):LineSegments<TGeometry, TMaterial>;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):LineSegments<TGeometry, TMaterial>;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):LineSegments<TGeometry, TMaterial>;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):LineSegments<TGeometry, TMaterial>;
	function clone(?recursive:Bool):LineSegments<TGeometry, TMaterial>;
	function copy(source:LineSegments<TGeometry, TMaterial>, ?recursive:Bool):LineSegments<TGeometry, TMaterial>;
	static var prototype : LineSegments<Dynamic, Dynamic>;
}