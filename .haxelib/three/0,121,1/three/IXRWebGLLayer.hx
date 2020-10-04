package three;

typedef IXRWebGLLayer = {
	var framebuffer : js.html.webgl.Framebuffer;
	var framebufferWidth : Float;
	var framebufferHeight : Float;
	function getViewport(view:XRView):XRViewport;
};