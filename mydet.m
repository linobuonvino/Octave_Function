
function [d,te] = mydet(A)
  tic;
  dim = size(A);
  if dim(2)==1
    d=A;
  elseif dim(2) == 2
    d=A(2,2)*A(1,1)-A(2,1)*A(1,2);
    %d=det(A);
  else
    d=0;
    for j=1:dim(2)
      if j==1
        D=A(2:end,2:end);
      else
        B=A(2:end,1:j-1);
        C=A(2:end,j+1:end);
        D=[B C];
      endif
      %d=mydet(D)
      d += (-1)^(j-1) * A(1,j) * mydet(D);
    endfor
  endif
  te = toc;
end

