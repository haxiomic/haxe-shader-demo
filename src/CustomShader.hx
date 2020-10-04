import three.*;

class CustomShader extends ShaderMaterial {

	public function new(uTime_s: Uniform) {
		super({
			uniforms: {
				t: uTime_s,
			},
			vertexShader: '
				varying vec2 vUv;
				void main() {
					vUv = uv;
					gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.);
				}
			',
			fragmentShader: '
				varying vec2 vUv;

				uniform float t;

				void main() {
					// shader is "Creation by Silexars"
					// from https://www.shadertoy.com/view/XsXXDn
					vec3 c;
					float l,z=t;
					for(int i=0;i<3;i++) {
						vec2 uv,p=vUv;
						uv=vUv;
						p-=.5;
						// p.x*=r.x/r.y; // p.x *= aspect ratio
						z+=.07;
						l=length(p);
						uv+=p/l*(sin(z)+1.)*abs(sin(l*9.-z*2.));
						c[i]=.01/length(abs(mod(uv,1.)-.5));
					}
					gl_FragColor = vec4(c/l,t);
				}
			'
		});
	}

}