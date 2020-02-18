pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- this started as a two-tweet breakout clone
-- reduced to singleplayer pong to fit in one tweet
-- paddle is curved, off-center hits change ball y velocity
-- 280 bytes
p,l,c,b,r,x,y,i,j,d,z=0,0,0,btn,rnd,9,9,3,4,3,1.01
::m::
if(b(1))p+=d
flip()cls()circ(p,-70,72,7)circ(x,y,4,c+8)p=mid(18,p-b()%2*d,109)x+=i y+=j
?l
if(x>124 or x<3)i*=-z d*=z
if(y>124)j*=-z
if y<3 then
if 19>abs(p-x)then i=i-(p-x)/20 l+=1 c=(c+1)%6
else stop()end
j*=-z
end
goto m
