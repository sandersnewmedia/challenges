#include <stdio.h>

int position = 10001;

int prime(int number) {
  for (int i = 2; i < number; i++) {
    if (number % i == 0 && i != number)
      return 0;
  }
  return 1;
}

int main() {
  int i = 0, j = 1;  
  while (i < position) {
    j++;
    if (prime(j))
      i++;
  }
  printf("The %dth prime is %d\r\n", position, j);
}

/*
Compile: gcc aledista.c -o aledista
Run: ./aledista
*/
