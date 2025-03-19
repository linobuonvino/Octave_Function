function [x,y]=circle(z,r)
  r = 2
  if r < 0
    return
  endif
  ##t=0:.001:2*pi;
  t=linspace(0,2*pi,2*pi*1000);
  centro=[real(z),imag(z)]
  plot(r*sin(t)+centro(1),r*cos(t)+centro(2))
  x=centro(1)+r
  y=centro(2)+r
 end
