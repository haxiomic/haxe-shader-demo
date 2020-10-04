package three;

typedef Renderer = {
	var domElement : js.html.CanvasElement;
	function render(scene:Object3D, camera:Camera):Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
};