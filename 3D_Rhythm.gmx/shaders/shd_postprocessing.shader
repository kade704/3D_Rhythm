attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float _minRadius;
uniform float _maxRadius;

void main()
{
    vec3 _baseColour = (v_vColour * texture2D( gm_BaseTexture, v_vTexcoord)).rgb;
    
    //Vignette
    float _radius = smoothstep(_minRadius, _maxRadius, distance(vec2(0.5), v_vTexcoord));
    vec3 _vignette = _baseColour * (1.0 - _radius);
    
    gl_FragColor = vec4(_vignette, 1.0);
}
