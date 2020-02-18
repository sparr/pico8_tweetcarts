pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- pop all the bubble wrap! touchscreen friendly. 270 bytes including sound
poke(24365,1)s=stat::r::b={}::m::
flip()cls()for p=0,63 do(b[p]and circ or circfill)(p%8*16+8,flr(p/8)*16+8,7,p%15+1)end
if(s(34)>0 and not b[p])sfx(0)b[p]=1
if(#b>62)goto r
x=s(32)y=s(33)pset(x,y,6)p=flr(y/16)*8+flr(x/16)goto m
__sfx__
000400000e6453667528655126350b624
