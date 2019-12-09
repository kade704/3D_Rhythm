attribute vec3 in_Position;
attribute vec2 in_TextureCoord;
attribute vec3 in_Normal;

varying vec3 v_vPosition;
varying vec2 v_vTexcoord;
varying vec3 v_vNormal;

uniform vec3 _position;
uniform vec3 _forward;
uniform vec3 _right;
uniform vec3 _up;
uniform float _size;

void main()
{
    float _px = _position.x + (_forward.x * in_Position.x * _size) + (_right.x * in_Position.y * _size) + (_up.x * in_Position.z * _size);
    float _py = _position.y + (_forward.y * in_Position.x * _size) + (_right.y * in_Position.y * _size) + (_up.y * in_Position.z * _size);
    float _pz = _position.z + (_forward.z * in_Position.x * _size) + (_right.z * in_Position.y * _size) + (_up.z * in_Position.z * _size);
    vec3 _p = vec3(_px, _py, _pz);
    
    float _nx = (_forward.x * in_Normal.x) + (_right.x * in_Normal.y) + (_up.x * in_Normal.z);
    float _ny = (_forward.y * in_Normal.x) + (_right.y * in_Normal.y) + (_up.y * in_Normal.z);
    float _nz = (_forward.z * in_Normal.x) + (_right.z * in_Normal.y) + (_up.z * in_Normal.z);
    vec3 _n = normalize(vec3(_nx, _ny, _nz));
    
    v_vPosition = _p;
    v_vTexcoord = in_TextureCoord;
    v_vNormal = _n;
    
    vec4 object_space_pos = vec4(_p.x, _p.y, _p.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec3 v_vPosition;
varying vec2 v_vTexcoord;
varying vec3 v_vNormal;

uniform float _alpha;

void main()
{
    vec3 _lightDir = vec3(-10, -30, -20);
    
    vec3 _baseCol = texture2D(gm_BaseTexture, v_vTexcoord).rgb;
    
    float _minIntensity = 0.7;
    float _maxIntensity = 0.95;
    
    float _intensity = abs(dot(normalize(v_vNormal), normalize(_lightDir)));
    
    vec3 _colour = _baseCol * mix(_minIntensity, _maxIntensity, _intensity);
    gl_FragColor = vec4(_colour, _alpha);
}
