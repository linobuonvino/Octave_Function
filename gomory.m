function gomory(f,x,A,b)
% Taglio di Gomory
% gomory(f,A,b)
%
% ⎧ min f'x
% ⎨ Ax=b
% ⎩ x>=0
%
% Esempio:
% Usare il - per il max!
% f = [-5 -14 0 0]
% x = [12 ; 24 ; scarto1 ; scarto2]
% A = [
% 	18 8 1 0;
% 	14 18 0 1;
% ]
% b = [55; 61]
%
% res = gomory(f,A,b)
%
% Ricordarsi le variabili di scarto!
%
% Written by AndJ, modified by Davide Squeri

base = find(x~=0)';
nbase = find(x==0)';
display(base)
xb = x(base);

xn = x(nbase);

Ab = A(:,base);

An = A(:,nbase);
display(Ab)
display(An)
As = inv(Ab)*An;
disp('Atilde =')
display(rats(As))


len = length(f);
%n = length(xb);
m = length(xn);

xsy = sym('x',[len,1]);
%xsyb = xsy(base);
xsyn = xsy(nbase);

eq1=A*xsy==b;

%eq2 = subs(eq1, var, A(1,:));
%eq2 = subs(eq1, var, A(2,:));

%len1=length(b);
len1=length(nonzeros(f));
len2=length(f)-len1;

for j=1:len2
    eq1(j)=isolate(eq1(j),xsy(len1+j));
end

eq = sym(zeros(len,1));

i=0;
for k=1:len
    if ismember(k,base)
        i=i+1;
        [numx, demx] = rat(xb(i));
        if demx ~= 1

            for j=1:m

                [num, dem] = rat(As(i,j));
                eq(k) = eq(k) + (mod(num,dem)/dem)*xsyn(j);
            end

            eq(k) = eq(k) >= mod(numx,demx)/demx;
        end
    end
end

eq = simplify(eq);
eq3 = subs(eq,lhs(eq1),rhs(eq1));
eq3 = simplify(eq3);

%res.x = x;
%res.As = As;
%res.eq = eq;

T=array2table([x,(1:len)',eq, eq3],'VariableNames',["x","r","eq in variables of N","eq-substitution"]);

disp(T)

disp('eq in variables of N')
disp(eq)

disp('eq-substitution')
disp(eq3)

return;

end
