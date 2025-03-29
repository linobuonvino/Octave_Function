function disegna_gersh2(A)
    C = 'r';
    disegna_gersh(A,true,C);
    C = 'b';
    A = A';
    disegna_gersh(A,true,C);
end
