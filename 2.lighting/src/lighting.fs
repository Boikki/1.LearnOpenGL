#version 330 core
out vec4 FragColor;

in vec3 Normal;
in vec3 FragPos;
in vec2 TexCoords;


struct Material {
    sampler2D diffuse;
    // vec3 ambient;
    vec3 specular;
    float shininess;
}; 

struct Light {
    // 光对不同的光照分量也有不同的强度
    vec3 position;

    // ambient 通常设置为较低的强度
    vec3 ambient;
    vec3 diffuse;
    vec3 specular;
};

uniform vec3 viewPos;
uniform Material material;
uniform Light light;

void main()
{
    // 环境光
    vec3 ambient = light.ambient * (texture(material.diffuse, TexCoords).rgb);
    // 漫反射 diffuse
    vec3 norm = normalize(Normal);
    vec3 lightDir = normalize(light.position - FragPos);
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = light.diffuse * (diff * (texture(material.diffuse, TexCoords).rgb));
    // 镜面光
    int glossy = 32;
    vec3 viewDir = normalize(viewPos - FragPos);
    // 用半程向量求
    vec3 halfDir = normalize(lightDir + viewDir);
    float spec = pow(max(dot(norm, halfDir), 0.0), glossy);
    vec3 specular = light.specular * (spec * material.specular);
    vec3 result = ambient + diffuse + specular;
    FragColor = vec4(result, 1.0);
}
