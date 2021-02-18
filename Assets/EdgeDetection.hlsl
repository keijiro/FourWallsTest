void UVEdge_float(float2 uv, float width, out float edge)
{
    uv = min(uv, 1 - uv);
    float2 bd = saturate(1 - uv / (fwidth(uv) * width));
    edge = max(bd.x, bd.y);
}
