#include <stdio.h>
#include <stdlib.h>

struct Foo {
  int a;
  int b;
};

int detect_type(void* p) {
  printf("%lu %lu %lu\n", sizeof(p), sizeof(*p), sizeof(struct Foo));
  
  if (sizeof(*p) == sizeof(struct Foo)) {
    printf("111\n");
  }
  else if (sizeof(*p) == sizeof(char)) {
    printf("222\n");
  }
  else {
    printf("333\n");
  }
  return 0;
}

int main() {
  struct Foo* a1;
  a1 = malloc(sizeof(struct Foo));
  a1->a = 10;
  a1->b = 20;

  detect_type(a1);

  char* a2;
  a2 = malloc(sizeof(char));
  *a2  ='c';

  detect_type(a2);
}
