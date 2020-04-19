#include<iostream>
#include<iomanip>
using namespace std;

double f(double x)
{
	
	return x * x + 3;
}

double Pole(double a, double b, int n)
{
	double h = (b - a) / (double)n; // obliczana wysokos� trapez�w
	double S = 0.0; //suma p�l
	double podst_a = f(a), podst_b;

	for (int i = 1;i <= n;i++)
	{
		podst_b = f(a + h * i);
		S += (podst_a + podst_b);
		podst_a = podst_b;
	}
	return S * 0.5*h;
}

int main()
{
	int a, b, n; // przedzia�y liczonej funckji
	cout << "Podaj przedzia� [a, b]\na = ";
	cin >> a;
	cout << "b = ";
	cin >> b;
	cout << "Liczba podzielonych trapez�w: ";
	cin >> n;

	if (!(a < b))
		cout << "To nie jest przedzia�!";
	else
		cout << "Pole figury wynosi: " << fixed << setprecision(2) << Pole(a, b, n);


	cin.ignore();
	cin.get();
	return 0;
}