

#include <iostream>
#include <iomanip>
#include <cmath>
#include <cstdlib>

using namespace std;

const double EPS0 = 0.0000000001;
const double EPSX = 0.0000000001;
double f(double x)
{
    return x * x + log10(x) - sin(x);
    
}

int main()
{

    double a, b, x0, fa, fb, f0;

    cout << setprecision(5)    
        << fixed;              

    cout << "Obliczanie pierwiastka funkcji - metoda bisekcji\n"
        "Podaj zakres poszukiwan pierwiastka:\n";
    cout << "a = "; cin >> a;
    cout << "b = "; cin >> b;
        "WYNIK:\n\n";
    fa = f(a); fb = f(b);
    if (fa * fb > 0)     cout << "Funkcja nie spelnia zalozen\n";
    else
    {
        while (fabs(a - b) > EPSX)
        {
            x0 = (a + b) / 2; f0 = f(x0);
            if (fabs(f0) < EPS0) break;
            if (fa * f0 < 0) b = x0;
            else
            {
                a = x0; fa = f0;
            }
        }
        cout << "x0 = " << setw(15) << x0 << endl;
    }
    system("pause");
    return 0;
}