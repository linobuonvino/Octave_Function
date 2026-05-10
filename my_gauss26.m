function [U,c] = my_gauss26(A,b)
U = [A b];
n = size(U);
for i = 2:n(1)
  coeff = U(i:end,i-1)./U(i-1,i-1);
  riga_passo_i = coeff*U(i-1,:);
  U(i:end,:) = U(i:end,:)-riga_passo_i;
endfor
c = U(1:end,n(2));
U = U(1:end,1:end-1);


end
