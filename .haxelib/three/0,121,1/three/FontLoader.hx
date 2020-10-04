package three;

@:jsRequire("three", "FontLoader") extern class FontLoader extends Loader {
	function new(?manager:LoadingManager);
	function load(url:String, ?onLoad:(responseFont:Font) -> Void, ?onProgress:(event:js.html.ProgressEvent<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Void;
	function parse(json:Dynamic):Font;
	function setCrossOrigin(crossOrigin:String):FontLoader;
	function setWithCredentials(value:Bool):FontLoader;
	function setPath(path:String):FontLoader;
	function setResourcePath(resourcePath:String):FontLoader;
	function setRequestHeader(requestHeader:{ }):FontLoader;
	static var prototype : FontLoader;
}