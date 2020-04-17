clear all
close all

syms x 
%%WZ�R CA�KOWANEJ FUNKCJI
f= x^2 + 3;

%%PRZEDZIA� CA�KOWANIA
a=2;
b=5;

%%ILO�� PR�BEK
samples=1000;

%%WEKTOR WYLOSOWANYCH PR�BEK
SampleArr = (b-a).*rand(samples,1) + a;

%%WARTO�� �REDNIA PR�BEK
ave=0;

%%SUMA WARTO�CI FUNKCJI DLA PR�BEK
sum=0;

%%OBLICZANIE WARTOSCI FUNKCJI DLA KA�DEJ PR�BKI
for i=1:samples
    x=SampleArr(i);
    sum=sum+single(subs(f));
end

ave=sum/samples;

%%OBLICZENIE WARTO�CI CA�KI FUNKCJI f 
integ=ave*(b-a);
disp(single(integ));