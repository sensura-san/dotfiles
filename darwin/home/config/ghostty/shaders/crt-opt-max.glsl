const float warpX = 0.075;
const float warpY = 0.1;
const float scanIntensity = 0.125;

void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
    mediump vec2 invRes = 1.0 / iResolution.xy;
    mediump vec2 uv = fragCoord * invRes;
    
    // Distance from center
    mediump vec2 dc = uv - 0.5;
    dc *= dc;
    
    // Vectorized warp
    uv = 0.5 + dc.yx * vec2(warpX, warpY) * (uv - 0.5) + (uv - 0.5);
    
    // Check least significant bit for even/odd scanline
    lowp float apply = float(int(fragCoord.y) & 1) * scanIntensity;
    
    // Sample and apply
    fragColor = vec4(texture(iChannel0, uv).rgb * (1.0 - apply), 1.0);
}
