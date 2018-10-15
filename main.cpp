#include <math.h>
#include <stdio.h>
 
int sum = 0;
void foo(int i) {
  sum += i;
}
 
int main() {
  int num;
  scanf("%d", &num);
  for(int i = 0; i < sqrt(num); ++i) {
    foo(i);
  }
  printf("sum=%d\n", sum);
  return 0;
}

