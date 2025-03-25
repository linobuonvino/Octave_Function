function [area] = areacerchio(raggio)
%AREACERCHIO Funzione che calcola l’area del cerchio di raggio r
%se viene fornito un raggio negativo ritorna il valore flag -1
if raggio < 0
area = -1;
return
end
area = pi*raggio^2;
end
