package three;

@:jsRequire("three", "MeshPhysicalMaterial") extern class MeshPhysicalMaterial extends MeshStandardMaterial {
	function new(parameters:MeshPhysicalMaterialParameters);
	var clearcoat : Float;
	var clearcoatMap : Null<Texture>;
	var clearcoatRoughness : Float;
	var clearcoatRoughnessMap : Null<Texture>;
	var clearcoatNormalScale : Vector2;
	var clearcoatNormalMap : Null<Texture>;
	var reflectivity : Float;
	var ior : Float;
	var sheen : Null<Color>;
	var transmission : Float;
	var transmissionMap : Null<Texture>;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():MeshPhysicalMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):MeshPhysicalMaterial;
	static var prototype : MeshPhysicalMaterial;
}