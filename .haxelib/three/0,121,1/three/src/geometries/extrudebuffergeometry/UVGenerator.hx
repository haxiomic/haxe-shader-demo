package three.src.geometries.extrudebuffergeometry;

typedef UVGenerator = {
	function generateTopUV(geometry:three.ExtrudeBufferGeometry, vertices:Array<Float>, indexA:Float, indexB:Float, indexC:Float):Array<three.Vector2>;
	function generateSideWallUV(geometry:three.ExtrudeBufferGeometry, vertices:Array<Float>, indexA:Float, indexB:Float, indexC:Float, indexD:Float):Array<three.Vector2>;
};