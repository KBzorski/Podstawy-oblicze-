clear all
close all

syms x 
%%WZÓR CA£KOWANEJ FUNKCJI
f= x^2 + 3;

%%PRZEDZIA£ CA£KOWANIA
a=2;
b=5;

%%ILOŒÆ PRÓBEK
samples=1000;

%%WEKTOR WYLOSOWANYCH PRÓBEK
SampleArr = (b-a).*rand(samples,1) + a;

%%WARTOŒÆ ŒREDNIA PRÓBEK
ave=0;

%%SUMA WARTOŒCI FUNKCJI DLA PRÓBEK
sum=0;

%%OBLICZANIE WARTOSCI FUNKCJI DLA KA¯DEJ PRÓBKI
for i=1:samples
    x=SampleArr(i);
    sum=sum+single(subs(f));
end

ave=sum/samples;

%%OBLICZENIE WARTOŒCI CA£KI FUNKCJI f 
integ=ave*(b-a);
disp(single(integ));