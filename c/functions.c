#include <stdio.h>

int x = 30, y = 4;

int power(int, int);

int main() {
  printf("%d^%d = %d", x, y, power(x, y));
  return 0;
}

/*int power(int x, int y) {*/
  /*int res = 1;*/
  /*while(y >= 1) {*/
    /*res *= x;*/
    /*y--;*/
  /*}*/
  /*return res;*/
/*}*/

/*int power(x, y) */
/*int x, y;*/
/*{*/
  /*int res = 1;*/
  /*while(y >= 1) {*/
    /*res *= x;*/
    /*y--;*/
  /*}*/
  /*return res;*/
/*}*/

int power(int x, int y) {
  if (y == 1) return x;
  return x * power(x, y - 1);
}
