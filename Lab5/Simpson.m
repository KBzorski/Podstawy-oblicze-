clear all
close all

syms x 
%%WZ�R CA�KOWANEJ FUNKCJI
f= x^2 + 3;

%%PRZEDZIA� CA�KOWANIA
a=2;
b=5;

%%ILO�� CZʌCI NA KT�RE ZOSTANIE PODZIELONA FUNKCJA
parts=100;
d=(b-a)/parts; %D�UGO�� KA�DEJ Z CZʌCI

%%POMOCNICZE ZIMENNE DO GROMADZENIA WYNIK�W W P�TLI
sum1=0;
sum2=0;

%%OBLICZENIE WARTO�CI FUNKCJI f DLA PUNKT�W GRANICZNYCH PRZEDZIA�U
x=a;
fa=subs(f);
x=b;
fb=subs(f);

%%P�TLA OBLICZAJ�CA sum1 ORAZ sum2
for i=1:parts
    if i~=parts
    x=a+i*d;
    sum1=sum1+subs(f);
    end
    x=((a+(i-1)*d)+(a+(i)*d))/2;
    %disp(x)
    sum2=sum2+subs(f);
end

%%OBLICZENIE WARTO�CI CA�KI FUNKCJI f 
integ=(b-a)/(6*parts)*(fa+fb+2*sum1+4*sum2);
disp(single(integ))