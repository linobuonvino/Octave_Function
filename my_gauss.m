function [U, c] = my_gauss(A, b)
  n = size(A,1);
  c = zeros(size(b,1),size(b,2));
  U = zeros(n);
  SI=[A b];
for i = 1 : n+1
  for k = i : n
     molt = -(SI(k+1,k)/SI(k,k))*SI(k,1:n+1)
    SI(k+1:end,k:n+1)=SI(k+1:end,k:n+1)+molt
  endfor
endfor
sup_solve2(SI(:,1:n),SI(:,n:end));
end
