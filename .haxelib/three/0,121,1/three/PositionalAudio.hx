package three;

@:jsRequire("three", "PositionalAudio") extern class PositionalAudio extends Audio<js.html.audio.PannerNode> {
	function new(listener:AudioListener);
	var panner : js.html.audio.PannerNode;
	function setRefDistance(value:Float):PositionalAudio;
	function getRefDistance():Float;
	function setRolloffFactor(value:Float):PositionalAudio;
	function getRolloffFactor():Float;
	function setDistanceModel(value:String):PositionalAudio;
	function getDistanceModel():String;
	function setMaxDistance(value:Float):PositionalAudio;
	function getMaxDistance():Float;
	function setDirectionalCone(coneInnerAngle:Float, coneOuterAngle:Float, coneOuterGain:Float):PositionalAudio;
	function setNodeSource(audioNode:js.html.audio.AudioBufferSourceNode):PositionalAudio;
	function setMediaElementSource(mediaElement:js.html.MediaElement):PositionalAudio;
	function setMediaStreamSource(mediaStream:js.html.MediaStream):PositionalAudio;
	function setBuffer(audioBuffer:js.html.audio.AudioBuffer):PositionalAudio;
	function play(?delay:Float):PositionalAudio;
	function pause():PositionalAudio;
	function stop():PositionalAudio;
	function connect():PositionalAudio;
	function disconnect():PositionalAudio;
	function setDetune(value:Float):PositionalAudio;
	function setFilters(value:Array<Dynamic>):PositionalAudio;
	function setFilter(filter:Dynamic):PositionalAudio;
	function setPlaybackRate(value:Float):PositionalAudio;
	function setLoop(value:Bool):PositionalAudio;
	function setLoopStart(value:Float):PositionalAudio;
	function setLoopEnd(value:Float):PositionalAudio;
	function setVolume(value:Float):PositionalAudio;
	function applyQuaternion(quaternion:Quaternion):PositionalAudio;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PositionalAudio;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PositionalAudio;
	function rotateX(angle:Float):PositionalAudio;
	function rotateY(angle:Float):PositionalAudio;
	function rotateZ(angle:Float):PositionalAudio;
	function translateOnAxis(axis:Vector3, distance:Float):PositionalAudio;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):PositionalAudio;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):PositionalAudio;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):PositionalAudio;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):PositionalAudio;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):PositionalAudio;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):PositionalAudio;
	function clone(?recursive:Bool):PositionalAudio;
	function copy(source:PositionalAudio, ?recursive:Bool):PositionalAudio;
	static var prototype : PositionalAudio;
}