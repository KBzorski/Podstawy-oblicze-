#include <iostream>

using namespace std;


double Interpolacja(double xs[], double ys[], double x)
{
	double t;
	double y = 0.0;

	for (int k = 0; k < 4; k++) {
		t = 1.0;
		for (int j = 0; j < 4; j++) {
			if (j != k) {
				t = t * ((x - xs[j]) / (xs[k] - xs[j]));
			}
		}
		y += t * ys[k];
	}
	return y;

}

int main()
{

	double x[] = { 10, 20, 30, 40, 50 };
	double y[] = { 0.98, 0.93, 0.86, 0.76, 0.64 };

	double y2 = Interpolacja(x, y, 21); // ostatni argument funkcji to punkt x w którym szukamy wartoœæ wielomianu
	cout << "Wartosc wielomianu w punkcie x = 21 wynosi: " << y2;

	return 0;
}
