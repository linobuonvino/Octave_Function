function disegna_gersh2(A)
    C = 'r';
    disegna_gersh(A,true,C);
    C = 'k';
    hold on;
    disegna_gersh(A',true,C);
end
