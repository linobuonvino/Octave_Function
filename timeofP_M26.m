function [t_S,t_P] = timeofS_P26(n)
  A = rand(n);
  B = rand(n);
  tic
  A+B
  t_S = toc
  tic
  A*B
  t_P = toc

end
