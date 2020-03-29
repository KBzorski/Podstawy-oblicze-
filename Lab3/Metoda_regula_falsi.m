clear all

%% Deklaracja równania w postaci funkcji oraz jego pochodnej 
syms x x2
%f= x + log10(x)-(sin(x))^2;
f= x^2 + log10(x)-sin(x);

f2= x2 + log10(x2)-(sin(x2))^2;
df=diff(f);
ddf=diff(f,2);

%% Deklaracja prezyzji wyniku oraz ograniczeñ dziedziny
a=1;
b=10;
precision=0.0001;

%% Zmienna pomocnicze
tmpx=0;
wynik=0;
si=0;
counter=0;

%% Sprawdzanie znaków pierwszej oraz drugiej pochodnej funkcji
if sign(subs(df))==sign(subs(ddf))
    x=a;
    si=1;
else
    x=b;
    si=0;
end

%% Pêtla rozwi¹zywuj¹ca równanie metod¹ regu³y-falsi
for i=0:100
    if abs(tmpx-x)>precision && x>0 %x musi byc wiekszy od zera, aby obliczyc z niego logarytm
        if si==1
            x2=b;
            tmpx=double(x);
            x=tmpx;  
            x=tmpx-subs(f)*(b-tmpx)/(subs(f2)-subs(f));
        else
            x2=a;
            tmpx=double(x);
            x=tmpx;            
            x=tmpx-subs(f)*(a-tmpx)/(subs(f2)-subs(f));
        end
    else
        counter=i;
        break
    end
end

%% Wyœwietlenie wyników
    wynik=double(subs(f));
    disp("x=")
    disp(double(x))
    disp("f(x)=")
    disp(wynik)
    disp("wykonano iteracji:")
    disp(counter)
    
 %%http://www.algorytm.org/procedury-numeryczne/metoda-regula-falsi.html
