function prodottoM
 global n;
 global tP=zeros(length(n),1);
  for i=1:length(n)
    A=randn(n(i));
    B=randn(n(i));
    tic;
    P=A*B;
    tP(i)=toc;
endfor
 end
