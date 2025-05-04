function [U, c, scambi] = my_gauss(A, b);
  n = size(A,1);
  c = zeros(size(b,1),size(b,2));
  U = zeros(n);
  scambi = 0;
  SI=[A b];
  for i = 1 : n+1
    if(i < n)
    [M,indice] = max(SI(i:end,i));
    for t = indice : 100
      if(M != SI(indice,i))
      indice = indice+1;
    else
      break;
    endif
  endfor

  if M != SI(i,i)
    scambi = scambi + 1;
    pi = eye(n);
    pi(i,:) = 0;
    pi(indice,:) = 0;
    pi(i,indice) = 1;
    pi(indice,i) = 1;
    SI = pi*SI;
  endif
endif
for j = i : n-1
  molt = SI(j+1,i)/SI(i,i);
  SI(j+1,i:end) = SI(j+1,i:end) - molt * SI(i,i:end);
endfor
endfor
U = SI(:,1:n);
c = SI(:,n+1:end);
return
endfunction
