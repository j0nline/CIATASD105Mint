#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>

int main() {
  int id = fork();
  if (id == 0) {
    printf("Hello from the child process\n");
  } else {
    printf("Hello from the main process\n");
  }
  return 0;
}
