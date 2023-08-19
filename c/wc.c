#include <stdio.h>

#define YES 1
#define NO 0

// vim: set sw=2 ts=2:

int main() {
  int c, nl, nw, nc, inword;

  inword = NO;
  nl = nw = nc = 0;
  // press CTRL-D to send EOF
  while ((c = getchar()) != EOF) {
    ++nc;
    if (c == '\n')
      ++nl;
    if (c == ' ' || c == '\n' || c == '\t')
      inword = NO;
    else if (inword == NO) {
      inword = YES;
      ++nw;
    }
  }
  printf("%d %d %d\n", nl, nw, nc);
  return 0;
}
      
