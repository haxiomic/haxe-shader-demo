package three;

@:jsRequire("three", "WebGLCubeRenderTarget") extern class WebGLCubeRenderTarget extends WebGLRenderTarget {
	function new(size:Float, ?options:WebGLRenderTargetOptions);
	function fromEquirectangularTexture(renderer:WebGLRenderer, texture:Texture):WebGLCubeRenderTarget;
	function clone():WebGLCubeRenderTarget;
	function copy(source:WebGLRenderTarget):WebGLCubeRenderTarget;
	static var prototype : WebGLCubeRenderTarget;
}