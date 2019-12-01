attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

uniform vec3 _position;
uniform vec3 _direction;
uniform vec3 _side;
uniform vec3 _up;
uniform float _size;

void main()
{
    float _px = _position.x + (_direction.x * in_Position.x * _size) + (_side.x * in_Position.y * _size) + (_up.x * in_Position.z * _size);
    float _py = _position.y + (_direction.y * in_Position.x * _size) + (_side.y * in_Position.y * _size) + (_up.y * in_Position.z * _size);
    float _pz = _position.z + (_direction.z * in_Position.x * _size) + (_side.z * in_Position.y * _size) + (_up.z * in_Position.z * _size);
    vec3 _p = vec3(_px, _py, _pz);
    
    v_vTexcoord = in_TextureCoord;
    
    vec4 object_space_pos = vec4(_p.x, _p.y, _p.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;

void main()
{
    vec3 _baseCol = texture2D(gm_BaseTexture, v_vTexcoord).rgb;
    gl_FragColor = vec4(_baseCol, 1.0);
}
