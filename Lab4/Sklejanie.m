close all;
clear all;
clc;

X=[10;20;30;40;50];
Y=[0.98;0.93;0.86;0.76;0.64];
M=zeros(1,5);
Mi=zeros(1,5);
lambda=zeros(1,5);
d=zeros(1,5);
A=zeros(1,5);
B=zeros(1,5);
C=zeros(1,5);
for i=1:size(X)
    if (i==1 || i==5)
        lambda(i)=0;
        Mi(i)=0;
        d(i)=0;
    else
        lambda(i)=(X(i+1)-X(i))/(X(i+1)-X(i-1));
        Mi(i)=1-lambda(i);
        d(i)=(6/(X(i+1)-X(i-1)))*((Y(i+1)-Y(i))/(X(i+1)-X(i))-(Y(i)-Y(i-1))/(X(i)-X(i-1)));        
    end
    M(i)=d(i)/(Mi(i)+2+lambda(i));
end

for i=1:4
   A(i)=(M(i+1)-M(i))/(6*(X(i+1)-X(i)));
   B(i)=M(i)/2;
   C(i)=(Y(i+1)-Y(i))/(X(i+1)-X(i))-((M(i+1)+2*M(i))*(X(i+1)-X(i)))/6;
end

figure(1)
for i=1:4
   f=@(x) (A(i)*(x-X(i))^3+B(i)*(x-X(i))^2+C(i)*(x-X(i))+Y(i));
   if i==1
       fplot(f,[0,20],'-r');
       hold on;
   end
   if i==2
       fplot(f,[20,30],'-g');
       hold on;
   end
   if i==3
       fplot(f,[30,40],'-y');
       hold on;
   end
   if i==4
       fplot(f,[40,100],'-b');
       hold on;
       grid on;
   end
end


for i=1:4
   f=@(x) (A(i)*(x-X(i))^3+B(i)*(x-X(i))^2+C(i)*(x-X(i))+Y(i));
   fprintf("%f(x-%f)^3+(%f)(x-%f)^2+(%f)(x-%f)+(%f)\n", A(i), X(i), B(i), X(i), C(i), X(i), Y(i)); 
end

fprintf("Dla x=21:\nf(x)=%f\n", f(21));