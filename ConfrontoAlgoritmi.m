function ConfrontoAlgoritmi;
  d = zeros(8,4);
  t = zeros(8,4);
  vett=[1:8];
  for n = 2 : 8
  A = randn(n);
  tic
  d(n,1) = det(A);
  t(n,1) = toc;
  [d(n,2),t(n,2)] = mydet(A);
  [d(n,3),t(n,3)] = mydet2(A);
  [d(n,4),t(n,4)] = mydet3(A);
endfor
loglog(vett,t)
legend("Det","mydet1","mydet2","mydet3")
endfunction
