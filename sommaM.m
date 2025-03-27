function [n,y2,tS]=sommaM
  global n;
  global tS=zeros(length(n),1);
  for i=1:length(n)
    A=randn(n(i));
    B=randn(n(i));
    tic;
    S=A+B;
    tS(i)=toc;
endfor
 end
