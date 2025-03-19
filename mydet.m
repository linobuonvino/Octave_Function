
function [d] = mydet(A)
persistent i;
 if isempty(i)
  i = 1
 endif
 dim = size(A)
 if length(A)-i+1<=2
  d = d + (A(dim(end-2),1)*A(2,2))-(A(1,2)*A(2,1))
  return
 endif
 d = (-1)^(i-1)*A(1,i)
 d+= d * mydet(A(i+1:end,i+1:end))
 i++
end

