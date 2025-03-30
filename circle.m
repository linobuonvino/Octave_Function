function [x,y]=circle(z,r,indiceG,autovalG,isGersh,isGersh2,C)
  %qui controllo che i valori passati a circle siano meno di 3, significa che circle non è stata chiamata da disegna_gersh
  if nargin < 3
    isGersh = false;
  endif
  if r < 0
    return
  endif
  t=linspace(0,2*pi,2*pi*1000);
  centro=[real(z),imag(z)];
  plot(r*sin(t)+centro(1),r*cos(t)+centro(2),'color',C);
  grid on;
  legend show;
  %caso in cui devo calcolare i cerchi di Gershgorin
  if isGersh
    title("Cerchi di Gershgorin");
    hold on;
    plot(autovalG(indiceG),'*','color',C);
 %***************************disegna_gersh2
    if isGersh2
      fprintf("coordinate centro cerchio %d (x,y) = (%.2g , %.2g)\n",indiceG,centro(1),centro(2));
      return;
    endif
 %*****************************************
    fprintf("coordinate centro cerchio %d (x,y) = (%.2g , %.2g)\n",indiceG,centro(1),centro(2));
    return;
 endif
  fprintf("coordinate centro (x,y) = (%.2g , %.2g)\n",centro(1),centro(2));
  xmax=centro(1)+r
  ymax=centro(2)+r
 end
