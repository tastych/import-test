shader_type canvas_item;

uniform sampler2D lut: source_color;


void fragment() {
	vec2 uv = UV - 0.5;
	float dist = dot(uv,uv);
	COLOR.rgb = texture(lut, vec2(sin(dist * 2.0 - TIME),0.0)).rgb;
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
