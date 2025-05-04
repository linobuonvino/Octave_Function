function [d,te] = mydet3(A);
  tic;
  b = zeros(size(A,2),1);
  [U,c,scambi] = my_gauss(A,b);
  d = (-1)^(scambi)*prod(diag(U));
  te = toc;
endfunction
