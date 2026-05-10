function [x_max, y_max] = circle26(z,r,colore)
  if r < 0
    print("Raggio non valido");
    return
  endif
  x_centro = real(z);
  y_centro = imag(z);
  theta = linspace(0,2*pi,1000);

  xc = x_centro + r * cos(theta);
  yc = y_centro + r * sin(theta);

  x_max = max(xc);
  y_max = max(yc);
%  plot(x_centro,y_centro,"+","linewidth",2);
  h = fill(xc,yc,colore);
  set(h, 'FaceAlpha', 0.15); % Trasparenza al 50
  axis equal;
  grid on;
  end
