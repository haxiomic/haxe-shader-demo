package three;

@:jsRequire("three", "Audio") extern class Audio<NodeType> extends Object3D {
	function new<NodeType>(listener:AudioListener);
	var listener : AudioListener;
	var context : js.html.audio.AudioContext;
	var gain : js.html.audio.GainNode;
	var autoplay : Bool;
	var buffer : Null<js.html.audio.AudioBuffer>;
	var detune : Float;
	var loop : Bool;
	var loopStart : Float;
	var loopEnd : Float;
	var offset : Float;
	var duration : Null<Float>;
	var playbackRate : Float;
	var isPlaying : Bool;
	var hasPlaybackControl : Bool;
	var sourceType : String;
	var source : Null<js.html.audio.AudioBufferSourceNode>;
	var filters : Array<Dynamic>;
	function getOutput():NodeType;
	function setNodeSource(audioNode:js.html.audio.AudioBufferSourceNode):Audio<NodeType>;
	function setMediaElementSource(mediaElement:js.html.MediaElement):Audio<NodeType>;
	function setMediaStreamSource(mediaStream:js.html.MediaStream):Audio<NodeType>;
	function setBuffer(audioBuffer:js.html.audio.AudioBuffer):Audio<NodeType>;
	function play(?delay:Float):Audio<NodeType>;
	function onEnded():Void;
	function pause():Audio<NodeType>;
	function stop():Audio<NodeType>;
	function connect():Audio<NodeType>;
	function disconnect():Audio<NodeType>;
	function setDetune(value:Float):Audio<NodeType>;
	function getDetune():Float;
	function getFilters():Array<Dynamic>;
	function setFilters(value:Array<Dynamic>):Audio<NodeType>;
	function getFilter():Dynamic;
	function setFilter(filter:Dynamic):Audio<NodeType>;
	function setPlaybackRate(value:Float):Audio<NodeType>;
	function getPlaybackRate():Float;
	function getLoop():Bool;
	function setLoop(value:Bool):Audio<NodeType>;
	function setLoopStart(value:Float):Audio<NodeType>;
	function setLoopEnd(value:Float):Audio<NodeType>;
	function getVolume():Float;
	function setVolume(value:Float):Audio<NodeType>;
	function load(file:String):Audio<js.html.audio.GainNode>;
	function applyQuaternion(quaternion:Quaternion):Audio<NodeType>;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Audio<NodeType>;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Audio<NodeType>;
	function rotateX(angle:Float):Audio<NodeType>;
	function rotateY(angle:Float):Audio<NodeType>;
	function rotateZ(angle:Float):Audio<NodeType>;
	function translateOnAxis(axis:Vector3, distance:Float):Audio<NodeType>;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Audio<NodeType>;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Audio<NodeType>;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Audio<NodeType>;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Audio<NodeType>;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Audio<NodeType>;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Audio<NodeType>;
	function clone(?recursive:Bool):Audio<NodeType>;
	function copy(source:Audio<NodeType>, ?recursive:Bool):Audio<NodeType>;
	static var prototype : Audio<Dynamic>;
}