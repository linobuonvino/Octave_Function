function x = sys_solve(A,b)
 [U,c] = my_gauss(A,b);
 Sc = size(c,2);
 if Sc < 2
 x = sup_solve2(U,c);
 return
endif
x = zeros(size(c));
for i = 1 : Sc
   x(:,i) = sup_solve2(U,c(:,i));
endfor
 endfunction
