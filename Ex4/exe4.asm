TITLE Addition de tableaux

.386
.model flat,stdcall

fiboTab PROTO
PUBLIC fiboTab

.data
nb       DWORD 10
table	 DWORD 1,1,8 DUP(?) ; table de taille "nb"

.code
fiboTab PROC
	mov ecx, nb ; met le compteur à nb (nb elements tables), and arrivera a 0, arretera de boucler
	mov esi, 0              ; esi <- 0 ; index pour parcourir le tableau (depassement), de TYPE table en TYPE table (ici de 4 en 4)
	
ttq: 
	mov eax,table[esi]     ; eax <- table[esi] -- place le contenu de table[esi] dans eax -- (1),1,?,?,?,?,?,?,?,?,?,?
	add esi,TYPE table	   ; esi <- TYPE table -- incremente le compteur -- 1,(1),?,?,?,?,?,?,?,?,?,?
	add eax,table[esi]     ; eax <- eax + table2[esi] -- additionne table[esi] avec eax, et place le resultat dans eax -- eax sera a 2
	add esi,TYPE table     ; esi <- TYPE table -- incremente le compteur -- 1,1,(?),?,?,?,?,?,?,?,?,?
	mov table[esi], eax    ; table[esi] <- eax -- deplace le resultat dans table à l'emplacement actuel -- 1,1,(2),?,?,?,?,?,?,?,?,?
	sub esi,TYPE table     ; esi <- esi + 4 (nb octets de dword) -- desincrement de esi, revient a l'element precedent pour recommencer -- 1,(1),2,?,?,?,?,?,?,?,?,?
	loopw ttq              ; ecx--; goto ttq si ecx != 0 -- boucle tant que ecx != 0
	mov eax, OFFSET nb  ; eax <- adresse de nb -- a la fin de la procedure, le contenu de eax sera retourne. on place alors l'adresse de nb pour pouvoir y accéder depuis le code c
	ret
fiboTab ENDP
END