#version 330

layout(location = 0) in vec3 pos;
layout(location = 1) in vec3 color;

uniform float time;
uniform float loopDuration;

smooth out vec3 _color;

const float radius = 0.5f;

void main() {
    float angle = mod(time, loopDuration) / loopDuration * 2.0f * 3.14159f;
    vec4 startPos = vec4(pos.x, pos.y, pos.z, 1.0f);
    vec4 offsetVec = vec4(cos(angle) * radius, sin(angle) * radius, 0.0f, 0.0f);
    gl_Position = startPos + offsetVec;
    _color = color;
}
