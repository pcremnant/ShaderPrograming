#version 450

// in vec3 a_Position;
layout (location = 0) in vec3 a_Position;

uniform float u_Scale;

void main()
{
	gl_Position = vec4(a_Position * u_Scale, 1);
}
