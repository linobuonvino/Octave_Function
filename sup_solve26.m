function x = sup_solve26(U,b)
  n = size(U);
  x = zeros(n(1),1);
  for i = n:-1:1
    if(i!=n)
      v = zeros(n(1),1);
      v = [v(1:i);U(i,i+1:end)'];
      v = v.*x;
      sommatoria = sum(v);
      b(i) = b(i)-sommatoria;
    endif
      x(i) = b(i)/U(i,i);
  endfor
end
