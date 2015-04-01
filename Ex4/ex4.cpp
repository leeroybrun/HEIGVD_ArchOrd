#include <stdio.h>
#include <stdlib.h>

/* Fonction sumTab                                    */
/* D�clare un tableau initialis� statiquement         */
/* Fait la somme de tous les �l�ments du tableau      */
/* R�sultat : pointeur sur le nombre d'�l�ments,      */
/*                     suivi par le tableau           */
/*                     suivi par la somme             */
extern "C" {
	int *_stdcall fiboTab();
}

void main() {
	int *pt;
	int i, nb;

	pt = fiboTab();

	// Imprimer le r�sultat
	// pt pointe sur une zone contenant :
	// 1-Nb �l�ments, 2-Valeurs du tab 3-Somme
	nb = *pt; // Nombre d'�l�ments
	printf("Nb : %Ld\n", nb);

	pt++;
	puts("Tableau");
	// Valeurs du tableau
	for (i = 0; i < nb; i++) {
		printf("%d ", *pt);
		pt++;
	}
	printf("\n\n", nb);

	system("pause");
}

