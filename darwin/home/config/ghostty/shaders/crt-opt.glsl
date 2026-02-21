// Optimized CRT shader
const float warp = 0.25;
const float scan = 0.50;

// Pre-calculate constants (done at compile time)
const float warpX = 0.3 * warp;  // 0.075
const float warpY = 0.4 * warp;  // 0.1
const float scanIntensity = 0.25 * scan;  // 0.125

void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
    // Use lower precision where possible (mobile optimization)
    mediump vec2 uv = fragCoord / iResolution.xy;
    
    // Calculate distance from center (simplified - single abs call)
    mediump vec2 dc = abs(uv - 0.5);
    dc *= dc;  // square it
    
    // Optimized warp calculation (combined operations)
    uv = 0.5 + (uv - 0.5) * (1.0 + vec2(dc.y * warpX, dc.x * warpY));
    
    // Cheaper scanline using fract instead of sin
    // Creates sharp alternating lines (more authentic CRT look)
    lowp float apply = step(0.5, fract(fragCoord.y * 0.5)) * scanIntensity;
    
    // Single texture sample
    lowp vec3 color = texture(iChannel0, uv).rgb;
    
    // Apply scanline darkening
    fragColor = vec4(color * (1.0 - apply), 1.0);
}
