pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- one circular lens orbits over a background of colored circles
-- zoomed in view of circles is not pixellated
-- abuses srand() to reproduce same random values every frame
-- zoomed version of the screen around the lens is rendered to the sprite map
-- lens area pixels are copied back from sprite map to the screen
-- 277 bytes
function c(z)srand()cls(1)for _=1,99 do circfill(n(128)*z-x*(z-1),n(128)*z-y*(z-1),n(16)*z,n(14)+2)end
end
n=rnd::_::
q=t()/8 r=32
x=64+42*cos(q)y=64+42*sin(q)c(3)memcpy(0,24576,8192)c(1)for j=-r,r do
for i=-r,r do
if(i*i+j*j<r*r)pset(x+i,y+j,sget(x+i,y+j))end
end
flip()goto _
