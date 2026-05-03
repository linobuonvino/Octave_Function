function [d] = mydet2026(A)
  dimension = size(A);
  d = 0;
  if dimension(2) == 1
    d = A;
    return;
  endif
  for j = 1 : dimension(2)
    d+=(-1)^(1+j)*A(1,j)*mydet2026(A(2:end,[1:j-1,j+1:end]));
  endfor
end

