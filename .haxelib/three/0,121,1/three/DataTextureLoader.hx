package three;

@:jsRequire("three", "DataTextureLoader") extern class DataTextureLoader extends Loader {
	function new(?manager:LoadingManager);
	function load(url:String, onLoad:(dataTexture:DataTexture) -> Void, ?onProgress:(event:js.html.ProgressEvent<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Void;
	function setCrossOrigin(crossOrigin:String):DataTextureLoader;
	function setWithCredentials(value:Bool):DataTextureLoader;
	function setPath(path:String):DataTextureLoader;
	function setResourcePath(resourcePath:String):DataTextureLoader;
	function setRequestHeader(requestHeader:{ }):DataTextureLoader;
	static var prototype : DataTextureLoader;
}