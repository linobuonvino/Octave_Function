function disegna_gersh226(A)
  n=size(A, 1); %estrae il numero di righe di A
  A_t = A';
  close all; %elimina i disegni preesistenti
  hold on; %fa si’ che ogni disegno non cancelli il precedente
  axis("equal"); %forza la stessa scala su x e y
  autovalori=eig(A);
  plot(real(autovalori),imag(autovalori),"*","color",'k');  % ’*’: disegna solo i punti, non collegandoli con linee
  %’help plot’ per altre stringhe magiche
  for k=1:n
    center=A(k,k);
    center_t = A_t(k,k);
    radius = 0; %accumulatore
    radius_t = 0;
    v1 = abs(A(k,1:k-1));
    v2 = abs(A(k,k+1:end));
    v1_t = abs(A_t(k,1:k-1));
    v2_t = abs(A_t(k,k+1:end));
    V = [v1 v2];
    radius = sum(V);
    V_t = [v1_t v2_t];
    radius_t = sum(V_t);
##    for j=1:n
##      if(j~=k)
##        radius=radius+abs(A(k,j));
##      endif
##    endfor
    circle26(center,radius,'b');
    circle26(center_t,radius_t,'y');
  endfor
end
