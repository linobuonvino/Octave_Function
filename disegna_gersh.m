function disegna_gersh(A,Gersh2,C)
  if nargin < 2
    Gersh2 = false;
  endif
    righe=size(A,1);
    r = zeros(righe,1);
    autoval = eig(A);
%ciclo che mi calcola ogni cerchio di gershgorin
    for i=1:righe
      centro=A(i,i);
      r = raggio_gersh(A,righe,i);
      if Gersh2
        circle(centro,r,i,autoval,true,Gersh2,C);
      else
        circle(centro,r,i,autoval,true,Gersh2);
      endif
    endfor
end
