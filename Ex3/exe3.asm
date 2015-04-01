TITLE Addition de tableaux

.386
.model flat,stdcall

sumTab PROTO
PUBLIC sumTab

.data
table1	 DWORD 5,7,8,9
table2	 DWORD 10,10,10,10
nb       DWORD LENGTHOF table1
table3	 DWORD LENGTHOF table1 DUP(?)

.code
sumTab PROC
	mov ecx, nb ; met le compteur à nb (nb elements tables), and arrivera a 0, arretera de boucler
	mov esi, 0              ; esi <- 0 ; index pour parcourir le tableau (depassement), de TYPE table en TYPE table (ici de 4 en 4)
ttq: 
	mov eax,table1[esi]     ; eax <- table[esi] -- place le contenu de table1[esi] dabs eax
	add eax,table2[esi]     ; eax <- eax + table2[esi] -- additionne table2[esi] avec eax, et place le resultat dans eax
	mov table3[esi], eax    ; table3[esi] <- eax -- deplace le resultat dans table3
	add esi,TYPE table1     ; esi <- esi + 4 (nb octets de dword) -- increment de esi
	loopw ttq              ; ecx--; goto ttq si ecx != 0 -- boucle tant que ecx != 0
	mov eax, OFFSET nb  ; eax <- adresse de nb -- a la fin de la procedure, le contenu de eax sera retourne. on place alors l'adresse de nb pour pouvoir y accéder depuis le code c
	ret
sumTab ENDP
END