#include <iostream>
#include <iomanip>
#include <cmath>
#include <cstdlib>

using namespace std;

const double EPS0 = 0.0000000001; // dok³adnoœæ porównania z zerem
const double EPSX = 0.0000000001; // dok³adnoœæ wyznaczenia pierwiastka

double f(double x)
{
 
  return sin(x)*sin(x) - x - log(x);// nasza funkcja

}

double fp(double x)
{
 
  return 2 * cos(x)*sin(x) - 1 ; // pochodna naszej funkcji

}

int main()
{

  double x0,x1,f0,f1;
  int    i;

  cout << setprecision(8)     // 8 cyfr po przecinku
       << fixed;              // format sta³oprzecinkowy

  cout << "Podaj punkt startowy\n";
  cout << "\nx0 = "; cin >> x0;
  cout << "\n";
  x1 = x0 - 1; f0 = f(x0); 
  i = 50;   // limit iteracji
  while (i && (fabs(x1 - x0) > EPSX) && (fabs(f0) > EPS0))
  {
    f1 = fp(x0);
    if(fabs(f1) < EPS0)
    {
      cout << "Zly punkt startowy\n";
      i = 0;
      break;
    }
    x1 = x0;
    x0 = x0 - f0 / f1;
    f0 = f(x0);
    if(!(--i)) cout << "Przekroczony limit obiegow\n";
  }
  if (x0==0)
     {cout << "Rozwiazanie nie spelnia zalozen naszego zadania\n";
     }
      else
  if(i) 
  cout << "\nZnaleziony pierwiastek to x = " << x0;
  cout << "\n\n";
  system("pause");
  return 0;
}
