// import browser fields like document, window, navigator etc
import three.*;
import js.html.CanvasElement;
import js.Browser.*;

var canvas: CanvasElement;
var renderer: WebGLRenderer;
var scene: Scene;
var camera: Camera;

var uTime_s = new Uniform(0);

var cube: Mesh<BufferGeometry, Material>;

function main() {
	// let's make a webgl canvas (on iOS this will be a metal view)
	canvas = document.createCanvasElement();
	document.body.appendChild(canvas);
	// canvas fill window
	canvas.style.position = 'absolute';
	canvas.style.width = '100%';
	canvas.style.height = '100%';

	renderer = new WebGLRenderer({
		canvas: canvas,
		antialias: false, // don't need anti-aliasing when just rendering shaders
		powerPreference: 'high-performance',
	});

	scene = new Scene();

	camera = new PerspectiveCamera();
	camera.position.z = 2.5;
	scene.add(camera);

	var shader = new CustomShader(uTime_s);
	cube = new Mesh(new BoxBufferGeometry(1, 1), shader);
	scene.add(cube);

	frameLoop(window.performance.now());
}

function frameLoop(t_ms: Float) {
	var t_s = t_ms / 1000;
	// ensure canvas has the correct size (window may have resized)
	if (canvas.width != window.innerWidth || canvas.height != window.innerHeight) {
		renderer.setSize(window.innerWidth * window.devicePixelRatio, window.innerHeight * window.devicePixelRatio, false);
		(cast camera: PerspectiveCamera).aspect = window.innerWidth / window.innerHeight;
		(cast camera: PerspectiveCamera).updateProjectionMatrix();
	}

	uTime_s.value = t_s;

	// rotate cube
	cube.rotation.z = t_s * 0.50;
	cube.rotation.y = t_s * 0.25;

	renderFrame(t_s);
	window.requestAnimationFrame(frameLoop);
}

function renderFrame(t_s: Float) {
	renderer.render(scene, camera);
}