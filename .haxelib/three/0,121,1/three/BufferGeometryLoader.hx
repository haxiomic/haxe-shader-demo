package three;

@:jsRequire("three", "BufferGeometryLoader") extern class BufferGeometryLoader extends Loader {
	function new(?manager:LoadingManager);
	function load(url:String, onLoad:(bufferGeometry:ts.AnyOf2<BufferGeometry, InstancedBufferGeometry>) -> Void, ?onProgress:(request:js.html.ProgressEvent<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Void;
	function parse(json:Dynamic):ts.AnyOf2<BufferGeometry, InstancedBufferGeometry>;
	function setCrossOrigin(crossOrigin:String):BufferGeometryLoader;
	function setWithCredentials(value:Bool):BufferGeometryLoader;
	function setPath(path:String):BufferGeometryLoader;
	function setResourcePath(resourcePath:String):BufferGeometryLoader;
	function setRequestHeader(requestHeader:{ }):BufferGeometryLoader;
	static var prototype : BufferGeometryLoader;
}