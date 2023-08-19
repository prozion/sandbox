#include <stdio.h>

// BEGIN (write your solution here)
float km2mile(float km) {
	return (km * 0.621);
}

void main() {
	for (float km = 0.0; km <= 300.0; km += 20.0)
		printf("%.2f : %.2f\n", km, km2mile(km));
}
