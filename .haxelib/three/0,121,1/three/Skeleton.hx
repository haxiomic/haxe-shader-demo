package three;

@:jsRequire("three", "Skeleton") extern class Skeleton {
	function new(bones:Array<Bone>, ?boneInverses:Array<Matrix4>);
	var useVertexTexture : Bool;
	var bones : Array<Bone>;
	var boneMatrices : js.lib.Float32Array;
	var boneTexture : Null<DataTexture>;
	var boneInverses : Array<Matrix4>;
	function calculateInverses(bone:Bone):Void;
	function pose():Void;
	function update():Void;
	function clone():Skeleton;
	function getBoneByName(name:String):Null<Bone>;
	function dispose():Void;
	static var prototype : Skeleton;
}