package three;

@:jsRequire("three", "InstancedMesh") extern class InstancedMesh<TGeometry, TMaterial> extends Mesh<TGeometry, TMaterial> {
	function new<TGeometry, TMaterial>(geometry:TGeometry, material:TMaterial, count:Float);
	var count : Float;
	var instanceMatrix : BufferAttribute;
	final isInstancedMesh : Bool;
	function getMatrixAt(index:Float, matrix:Matrix4):Void;
	function setMatrixAt(index:Float, matrix:Matrix4):Void;
	function setColorAt(index:Float, color:Color):Void;
	function applyQuaternion(quaternion:Quaternion):InstancedMesh<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):InstancedMesh<TGeometry, TMaterial>;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):InstancedMesh<TGeometry, TMaterial>;
	function rotateX(angle:Float):InstancedMesh<TGeometry, TMaterial>;
	function rotateY(angle:Float):InstancedMesh<TGeometry, TMaterial>;
	function rotateZ(angle:Float):InstancedMesh<TGeometry, TMaterial>;
	function translateOnAxis(axis:Vector3, distance:Float):InstancedMesh<TGeometry, TMaterial>;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):InstancedMesh<TGeometry, TMaterial>;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):InstancedMesh<TGeometry, TMaterial>;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):InstancedMesh<TGeometry, TMaterial>;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):InstancedMesh<TGeometry, TMaterial>;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):InstancedMesh<TGeometry, TMaterial>;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):InstancedMesh<TGeometry, TMaterial>;
	function clone(?recursive:Bool):InstancedMesh<TGeometry, TMaterial>;
	function copy(source:InstancedMesh<TGeometry, TMaterial>, ?recursive:Bool):InstancedMesh<TGeometry, TMaterial>;
	static var prototype : InstancedMesh<Dynamic, Dynamic>;
}