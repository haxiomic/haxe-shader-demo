package three;

@:jsRequire("three", "WebGLGeometries") extern class WebGLGeometries {
	function new(gl:js.html.webgl.RenderingContext, attributes:three.src.renderers.webgl.webglattributes.WebGLAttributes, info:WebGLInfo);
	function get(object:Object3D, geometry:ts.AnyOf2<Geometry, BufferGeometry>):BufferGeometry;
	function update(geometry:ts.AnyOf2<Geometry, BufferGeometry>):Void;
	function getWireframeAttribute(geometry:ts.AnyOf2<Geometry, BufferGeometry>):BufferAttribute;
	static var prototype : WebGLGeometries;
}