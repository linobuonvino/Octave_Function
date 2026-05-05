function disegna_gersh26(A,colore)
  n=size(A, 1); %estrae il numero di righe di A
  close all; %elimina i disegni preesistenti
  hold on; %fa si’ che ogni disegno non cancelli il precedente
  axis("equal"); %forza la stessa scala su x e y
  autovalori=eig(A);
  plot(real(autovalori),imag(autovalori),"*","color",colore);  % ’*’: disegna solo i punti, non collegandoli con linee
  %’help plot’ per altre stringhe magiche
  for k=1:n
    center=A(k,k);
    radius=0; %accumulatore
    v = A(k,1:k
    for j=1:n
      if(j~=k)
        radius=radius+abs(A(k,j));
      endif
    endfor
    circle26(center,radius,colore);
  endfor
end
