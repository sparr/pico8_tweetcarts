pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- crash into the asteroid to score
-- shooting and stabbing both on the cutting room floor to fit into a tweet
-- 279 bytes
x,y,i,j,d,z,e,b,n,c=9,9,1,1,0,0,128,btn,rnd,circ::y::r=n(e)s=n(e)t=n(2)-1::z::flip()k=cos(d/e)l=sin(d/e)d+=b()%2if(b(1))d-=1
if(b(2))i=i+k/9j=j+l/9
cls()x,y,r,s=x%e+i,y%e+j,r%e+t,s%e+1 c(x,y,2)line(x,y,x+4*k,y+4*l)c(r,s)c(r,s,5)
if(abs(r-x)<5 and abs(s-y)<5)z+=1 goto y
?z
goto z
