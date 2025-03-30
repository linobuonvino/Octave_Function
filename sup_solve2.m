function x=sup_solve2(U,b)
  n = size(U,1);
  D = diag(U);
  p = b;
  x = zeros(n,1);
  h = zeros(1,n);
  for i = n:-1:1
    p(i)=p(i)-U(i,1:end)*x;
    x(i) = p(i)/D(i);
  endfor
end
