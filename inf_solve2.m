function x=inf_solve2(L,B)
  n = size(L,1);
  D = diag(L);
  p = B;
  x = zeros(n,1);
  h = zeros(1,n);
  for i = 1 : n
    p(i)=p(i)-L(i,1:end)*x;
    x(i) = p(i)/D(i);
  endfor
end
