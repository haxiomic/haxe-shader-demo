package three;

@:jsRequire("three", "SkinnedMesh") extern class SkinnedMesh<TGeometry, TMaterial> extends Mesh<TGeometry, TMaterial> {
	function new<TGeometry, TMaterial>(?geometry:TGeometry, ?material:TMaterial, ?useVertexTexture:Bool);
	var bindMode : String;
	var bindMatrix : Matrix4;
	var bindMatrixInverse : Matrix4;
	var skeleton : Skeleton;
	final isSkinnedMesh : Bool;
	function bind(skeleton:Skeleton, ?bindMatrix:Matrix4):Void;
	function pose():Void;
	function normalizeSkinWeights():Void;
	function applyQuaternion(quaternion:Quaternion):SkinnedMesh<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):SkinnedMesh<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):SkinnedMesh<TGeometry, TMaterial>;
	function rotateX(angle:Float):SkinnedMesh<TGeometry, TMaterial>;
	function rotateY(angle:Float):SkinnedMesh<TGeometry, TMaterial>;
	function rotateZ(angle:Float):SkinnedMesh<TGeometry, TMaterial>;
	function translateOnAxis(axis:Vector3, distance:Float):SkinnedMesh<TGeometry, TMaterial>;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):SkinnedMesh<TGeometry, TMaterial>;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):SkinnedMesh<TGeometry, TMaterial>;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):SkinnedMesh<TGeometry, TMaterial>;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):SkinnedMesh<TGeometry, TMaterial>;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):SkinnedMesh<TGeometry, TMaterial>;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):SkinnedMesh<TGeometry, TMaterial>;
	function clone(?recursive:Bool):SkinnedMesh<TGeometry, TMaterial>;
	function copy(source:SkinnedMesh<TGeometry, TMaterial>, ?recursive:Bool):SkinnedMesh<TGeometry, TMaterial>;
	static var prototype : SkinnedMesh<Dynamic, Dynamic>;
}