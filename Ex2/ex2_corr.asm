TITLE Addition de tableaux

.386
.model flat,stdcall

sumTab PROTO
PUBLIC sumTab

.data
nbElt	 DWORD 10           ; nb d'éléments du tableau
table    DWORD  5,7,8,9,3,4,5,6,1,2    ; tableau initialisé
sum	     DWORD 0           ; somme initialisée à 0

.code
sumTab PROC
	mov ecx,LENGTHOF table ; nb elts du tableau
	mov esi,0              ; esi <- 0
ttq: 
	mov eax,table[esi]     ; eax <- table[esi]
	add sum,eax            ; sum <- sum + eax
	add esi,TYPE table     ; esi <- esi + 4 (nb octets de dword)
	loopw ttq              ; ecx--; goto ttq si ecx != 0
	mov eax, OFFSET nbElt  ; eax <- adresse de nbElt
	ret
sumTab ENDP
END