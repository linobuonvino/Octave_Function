function x = inf_solve(L,B)
s = size (L,1);
n = s(1);
x = zeros(n,1);
for i = 1:n
  p = B(i);
  for j = 1:i-1
    p=p-L(i,j)*x(j);
  endfor
  x(i) = p/L(i,i);
endfor
end
