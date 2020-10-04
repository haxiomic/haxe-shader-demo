package three;

@:jsRequire("three", "Mesh") extern class Mesh<TGeometry, TMaterial> extends Object3D {
	function new<TGeometry, TMaterial>(?geometry:TGeometry, ?material:TMaterial);
	var geometry : TGeometry;
	var material : TMaterial;
	@:optional
	var morphTargetInfluences : Array<Float>;
	@:optional
	var morphTargetDictionary : { };
	final isMesh : Bool;
	function updateMorphTargets():Void;
	function applyQuaternion(quaternion:Quaternion):Mesh<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Mesh<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Mesh<TGeometry, TMaterial>;
	function rotateX(angle:Float):Mesh<TGeometry, TMaterial>;
	function rotateY(angle:Float):Mesh<TGeometry, TMaterial>;
	function rotateZ(angle:Float):Mesh<TGeometry, TMaterial>;
	function translateOnAxis(axis:Vector3, distance:Float):Mesh<TGeometry, TMaterial>;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Mesh<TGeometry, TMaterial>;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Mesh<TGeometry, TMaterial>;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Mesh<TGeometry, TMaterial>;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Mesh<TGeometry, TMaterial>;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Mesh<TGeometry, TMaterial>;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Mesh<TGeometry, TMaterial>;
	function clone(?recursive:Bool):Mesh<TGeometry, TMaterial>;
	function copy(source:Mesh<TGeometry, TMaterial>, ?recursive:Bool):Mesh<TGeometry, TMaterial>;
	static var prototype : Mesh<Dynamic, Dynamic>;
}