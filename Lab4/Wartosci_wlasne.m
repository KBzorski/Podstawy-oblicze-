clear all
close all

syms L x1 x2 x3
A=[ 3, 1, 2; 1, 8, 1; 2, 1, 1 ];
[a1,a2]=size(A);
AL=A-eye(a1)*L;
d=det(AL);
solL = solve(d, L);

disp("Warto�ci w�asne macierzy:");
disp(single(subs(solL)));
disp("Macierz kolejnych wektor�w w�asnych:");
[V,D] = eig(A);
disp(V')