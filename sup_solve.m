function x = sup_solve(U,b)
s = size (U,1);
n = s(1);
x = zeros(n,1);
for i = n:-1:1
  p = b(i);
  for j = n:-1:i+1
    p=p-U(i,j)*x(j);
  endfor
  x(i) = p/U(i,i);
endfor
end
