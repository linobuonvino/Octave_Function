function [Taylor] = myexp326(x)
  s = 1;
  p = 1;
  sign = 0;
  if x < 0
    x = -x;
    sign = 1;
  endif
  for k = 1:500
   p = p * x / k;
   s = s + p;
  endfor
  if sign == 1
    s = 1/s;
  endif
  Taylor = s;
  end
