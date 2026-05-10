function x = sys_solve26(A,b)
[U,c] = my_gauss26(A,b);
x = sup_solve26(U,c);
end

