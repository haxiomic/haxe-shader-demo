package three;

@:jsRequire("three", "AnimationMixer") extern class AnimationMixer extends EventDispatcher {
	function new(root:ts.AnyOf2<Object3D, AnimationObjectGroup>);
	var time : Float;
	var timeScale : Float;
	function clipAction(clip:AnimationClip, ?root:ts.AnyOf2<Object3D, AnimationObjectGroup>, ?blendMode:AnimationBlendMode):AnimationAction;
	function existingAction(clip:AnimationClip, ?root:ts.AnyOf2<Object3D, AnimationObjectGroup>):Null<AnimationAction>;
	function stopAllAction():AnimationMixer;
	function update(deltaTime:Float):AnimationMixer;
	function setTime(timeInSeconds:Float):AnimationMixer;
	function getRoot():ts.AnyOf2<Object3D, AnimationObjectGroup>;
	function uncacheClip(clip:AnimationClip):Void;
	function uncacheRoot(root:ts.AnyOf2<Object3D, AnimationObjectGroup>):Void;
	function uncacheAction(clip:AnimationClip, ?root:ts.AnyOf2<Object3D, AnimationObjectGroup>):Void;
	static var prototype : AnimationMixer;
}