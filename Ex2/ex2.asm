TITLE Addition de tableaux

.386
.model flat,stdcall

sumTab PROTO
PUBLIC sumTab

.data
nbElt	 DWORD 10           ; nb d'�l�ments du tableau
table    DWORD 5,7,8,9,3,4,5,6,1,2    ; tableau initialis�
sum	     DWORD 0           ; somme initialis�e � 0

.code
sumTab PROC
	mov ecx, LENGTHOF table
	mov eax, 0
	mov esi, OFFSET table
ttq:
	add sum, table[esi]

	mov eax, OFFSET nbElt
	ret
sumTab ENDP
END