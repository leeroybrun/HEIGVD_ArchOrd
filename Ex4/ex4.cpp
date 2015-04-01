#include <stdio.h>
#include <stdlib.h>

/* Fonction sumTab                                    */
/* Déclare un tableau initialisé statiquement         */
/* Fait la somme de tous les éléments du tableau      */
/* Résultat : pointeur sur le nombre d'éléments,      */
/*                     suivi par le tableau           */
/*                     suivi par la somme             */
extern "C" {
	int *_stdcall fiboTab();
}

void main() {
	int *pt;
	int i, nb;

	pt = fiboTab();

	// Imprimer le résultat
	// pt pointe sur une zone contenant :
	// 1-Nb éléments, 2-Valeurs du tab 3-Somme
	nb = *pt; // Nombre d'éléments
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

