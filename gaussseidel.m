function x=gaussseidel(A,b,k)
  SI = A - diag(diag(A));
  SIU = triu(SI);
  SID = tril(SI);
  Diag = diag(A);
  x = b;
  x_new=zeros(3,1);
  for i = 0 : k
    ax = x'*A';
    x_new = x_new - ax';
    AXU = x'*SIU';
    AXD = x_new'*SID';
    for j = 1 : size(A,1)
      x_new(j)=(b(j)-AXD(j)-AXU(j))/Diag(j);
    endfor
    x = x_new;
    norm(A*x-b)
  endfor

endfunction
