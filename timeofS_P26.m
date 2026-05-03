function [t_S,t_P] = timeofS_P26()
  n = [100, 200, 400, 800, 1600, 3200, 6400]
  for i=1:7
    A = rand(n(i));
    B = rand(n(i));
    tic
    A+B;
    t_S(i) = toc;
    tic
    A*B;
    t_P(i) = toc;
  endfor
  loglog(n, t_S, '-o', n, t_P, '-x', n, n.^3, '--', n, n.^2, '--')
  xlabel('n (Dimensione del problema)');
  ylabel('Tempo / Complessità');
  title('Analisi delle prestazioni: t_S vs t_P');
  legend('t_S', 't_P', 'n^3 (Cubica)', 'n^2 (Quadratica)', 'location', 'northwest');
  grid on;
end
