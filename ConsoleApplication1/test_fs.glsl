#version 410

in vec3 normal;
in vec2 st;
out vec4 frag_colour;

void main() {
	float ndcDepth =
	(2.0 * gl_FragCoord.z - gl_DepthRange.near - gl_DepthRange.far) /
	(gl_DepthRange.far - gl_DepthRange.near);
	float clipDepth = ndcDepth / gl_FragCoord.w;
	frag_colour = vec4((clipDepth * 0.5) + 0.5); 
	//frag_colour = vec4(gl_FragCoord.z);
}
