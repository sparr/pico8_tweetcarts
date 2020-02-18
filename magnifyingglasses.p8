pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- two circular lenses orbit over a background of colored circles
-- one lens zooms in, the other zooms out
-- abuses srand() to reproduce same random values every frame
-- lenses render into the sprite map, then get drawn over the main screen
-- 280 bytes
n=rnd::_::cls(1)srand()for _=1,99 do circfill(n(128),n(128),n(16),n(14)+2)end
q=t()/6 r=24
memset(0,0,8192)for s=-.5,1,1.5 do
x=64+s*36*cos(q)y=64+s*36*sin(q)for j=-r,r do
for i=-r,r do
if(i*i+j*j<r*r)sset(x+i,y+j,pget(x+i/(s+1),y+j/(s+1)))end
end
end
spr(0,0,0,16,16)flip()goto _
