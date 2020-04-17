clear all
close all

syms x 
%%WZÓR CA£KOWANEJ FUNKCJI
f= x^2 + 3;

%%PRZEDZIA£ CA£KOWANIA
a=2;
b=5;

%%ILOŒÆ CZÊŒCI NA KTÓRE ZOSTANIE PODZIELONA FUNKCJA
parts=100;
d=(b-a)/parts; %D£UGOŒÆ KA¯DEJ Z CZÊŒCI

%%POMOCNICZE ZIMENNE DO GROMADZENIA WYNIKÓW W PÊTLI
sum1=0;
sum2=0;

%%OBLICZENIE WARTOŒCI FUNKCJI f DLA PUNKTÓW GRANICZNYCH PRZEDZIA£U
x=a;
fa=subs(f);
x=b;
fb=subs(f);

%%PÊTLA OBLICZAJ¥CA sum1 ORAZ sum2
for i=1:parts
    if i~=parts
    x=a+i*d;
    sum1=sum1+subs(f);
    end
    x=((a+(i-1)*d)+(a+(i)*d))/2;
    %disp(x)
    sum2=sum2+subs(f);
end

%%OBLICZENIE WARTOŒCI CA£KI FUNKCJI f 
integ=(b-a)/(6*parts)*(fa+fb+2*sum1+4*sum2);
disp(single(integ))