function x=jacobi(A,b,k)
  SI = A - diag(diag(A));
  SIU = triu(SI);
  SID = tril(SI);
  Diag = diag(A);
  x = b;
  x_new=zeros(3,1);
  for i = 0 : k
    AXU = x'*SIU';
    AXD = x'*SID';
    for j = 1 : size(A,1)
      x_new(j)=(b(j)-AXD(j)-AXU(j))/Diag(j);
    endfor
    x=x_new;
    norm(A*x-b)
  endfor

endfunction
