#include <stdio.h>

// BEGIN (write your solution here)
// void fizzbuzz(int limit) {
// 	printf("%d", limit);
// }
void fizbuzz(int limit) {
	int div3, div5;
	for(int i = 1; i <= limit; ++i) {
		div3 = (i % 3 == 0);
		div5 = (i % 5 == 0);
		if (div3) 
			printf("Fizz");
		if (div5) 
			printf("Buzz");
		if (!div3 && !div5) 
			printf("%d", i);
		printf("\n");
	}
}
// END

// void fizzbuzz(int limit);


int main(void)
{
    fizzbuzz(20);
    return 0;
}


