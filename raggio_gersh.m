%Calcola il raggio del cerchio di Gershgorin numero i della matrice A
function R = raggio_gersh(A,righe,i)
  for j = 1:righe
    if i != j
      ra(j) = A(i,j);
    endif
  endfor
  R = sum(abs(ra));
end
