#version 330

smooth in vec3 _color;

const vec4 firstColor = vec4(1.0f, 0.0f, 0.0f, 1.0f);
const vec4 secondColor = vec4(0.0f, 1.0f, 0.0f, 1.0f);

uniform float time;
uniform float loopDurationFrag;

out vec4 outputColor;
void main() {
    float k = mod(time, loopDurationFrag) / loopDurationFrag;
    outputColor = mix(firstColor, secondColor, k);
    // outputColor = vec4(_color.x, _color.y, _color.z, 1.0f);
}
