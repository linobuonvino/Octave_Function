function [t] = clock26(f)
  tic
  f();
  t = toc;
  end
