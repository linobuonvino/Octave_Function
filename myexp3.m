function [exp]=myexp3(x,n)
  t = 1
  a = 1
  if x<0
    y=-x
    else y=x
  endif
  for i=1:n
    t = t * y / i
    a = a + t
  endfor
  if x < 0
    1/a
  endif
end
