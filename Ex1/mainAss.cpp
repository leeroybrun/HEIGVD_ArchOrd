#include <stdio.h>
#include <stdlib.h>

extern "C" {
	long _stdcall ex2();
}

void main() {
  printf ("Resultat : %Ld\n",
	  ex2());

  system("pause");
}
