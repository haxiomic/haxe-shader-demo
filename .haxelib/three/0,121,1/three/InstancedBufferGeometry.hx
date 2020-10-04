package three;

@:jsRequire("three", "InstancedBufferGeometry") extern class InstancedBufferGeometry extends BufferGeometry {
	function new();
	var instanceCount : Float;
	function addGroup(start:Float, count:Float, instances:Float):Void;
	function clone():InstancedBufferGeometry;
	function copy(source:BufferGeometry):InstancedBufferGeometry;
	static var prototype : InstancedBufferGeometry;
}