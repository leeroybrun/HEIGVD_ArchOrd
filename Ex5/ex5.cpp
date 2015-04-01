#include <stdio.h>
#include <stdlib.h>

/* Fonction sumTab                                    */
/* Déclare un tableau initialisé statiquement         */
/* Fait la somme de tous les éléments du tableau      */
/* Résultat : pointeur sur le nombre d'éléments,      */
/*                     suivi par le tableau           */
/*                     suivi par la somme             */
extern "C" {
	int *_stdcall invertStr();
}

void main() {
	// Imprimer le résultat
	// pt pointe sur une zone contenant :
	// 1-Nb éléments, 2-Valeurs du tab 3-Somme

	printf("\nStr: %s\n", invertStr());

	system("pause");
}

