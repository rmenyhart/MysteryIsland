#version 410 core

layout(location=0) in vec3 vPosition;
layout(location=1) in vec3 vNormal;
layout(location=2) in vec2 vTexCoords;

out vec3 normal;
out vec4 fragPosEye;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() 
{
	//compute eye space coordinates
	fragPosEye = view * model * vec4(vPosition, 1.0f);
	normal = vNormal;
	gl_Position = projection * view * model * vec4(vPosition, 1.0f);
}
