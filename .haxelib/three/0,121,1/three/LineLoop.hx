package three;

@:jsRequire("three", "LineLoop") extern class LineLoop<TGeometry, TMaterial> extends Line<TGeometry, TMaterial> {
	function new<TGeometry, TMaterial>(?geometry:TGeometry, ?material:TMaterial);
	final isLineLoop : Bool;
	function computeLineDistances():LineLoop<TGeometry, TMaterial>;
	function applyQuaternion(quaternion:Quaternion):LineLoop<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):LineLoop<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):LineLoop<TGeometry, TMaterial>;
	function rotateX(angle:Float):LineLoop<TGeometry, TMaterial>;
	function rotateY(angle:Float):LineLoop<TGeometry, TMaterial>;
	function rotateZ(angle:Float):LineLoop<TGeometry, TMaterial>;
	function translateOnAxis(axis:Vector3, distance:Float):LineLoop<TGeometry, TMaterial>;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):LineLoop<TGeometry, TMaterial>;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):LineLoop<TGeometry, TMaterial>;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):LineLoop<TGeometry, TMaterial>;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):LineLoop<TGeometry, TMaterial>;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):LineLoop<TGeometry, TMaterial>;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):LineLoop<TGeometry, TMaterial>;
	function clone(?recursive:Bool):LineLoop<TGeometry, TMaterial>;
	function copy(source:LineLoop<TGeometry, TMaterial>, ?recursive:Bool):LineLoop<TGeometry, TMaterial>;
	static var prototype : LineLoop<Dynamic, Dynamic>;
}