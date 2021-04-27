#version 450

in vec3 a_Position;
in vec3 a_Velocity;
in float a_EmitTime;

uniform float u_Time;

const vec3 c_Gravity = vec3(0, -2.8f, 0);

void main()
{
	float newTime = u_Time - a_EmitTime;
	vec3 newPos = a_Position;
	if (newTime < 0)
	{
		newPos = vec3(10000, 10000, 10000);
	}
	else
	{
		float tt = newTime * newTime;
		newPos = newPos + a_Velocity * u_Time + 0.5 * c_Gravity * tt;

	}
	gl_Position = vec4(newPos, 1);
}
