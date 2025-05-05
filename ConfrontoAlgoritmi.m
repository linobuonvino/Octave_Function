function ConfrontoAlgoritmi(x);
  d = zeros(x,4);
  t = zeros(x,4);
  vett=linspace(0,x/60,8);
  vettore = [1:7];
  for n = 2 : x
  A = randn(n);
  tic
  d(n,1) = det(A);
  t(n,1) = toc;
  [d(n,2),t(n,2)] = mydet(A);
  [d(n,3),t(n,3)] = mydet2(A);
  [d(n,4),t(n,4)] = mydet3(A);
endfor
vett3=vett.^3;
plot(vett,t,vett,vett3)
legend("Det","mydet1","mydet2","mydet3","x^3")
endfunction
