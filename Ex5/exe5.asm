TITLE Addition de tableaux

.386
.model flat,stdcall

invertStr PROTO
PUBLIC invertStr

.data
chaine1	 BYTE "HELLO WORLD",0
chaine2	 BYTE LENGTHOF chaine1 DUP(0)

.code
invertStr PROC
	mov ecx, LENGTHOF chaine1    ; met le compteur à la taille de la chaine
	mov esi, 0 ; esi <- 0        ; index pour parcourir la deuxieme chaine en ordre "normal" (depassement), de TYPE table en TYPE table (ici de 1 en 1)
	mov edi, LENGTHOF chaine1 -2 ; deuxieme compteur, pour parcourir la premiere chaine en ordre inverse
ttq: 
	mov al,chaine1[edi]          ; al <- chaine1[edi] -- place dans al (sera juste un bit) le caractere -- edi est le compteur inverse, qui commence de la fin pour arriver a 0
	mov chaine2[esi], al         ; chaine2[esi] <- al -- place al dans chaine2[esi] -- esi est le compteur "normal", qui va de 0 à la taille de la chaine
	inc esi                      ; incremente esi (ici on va de 1 en 1)
	dec edi                      ; desincremente edi (de 1 en 1)
	loopw ttq                    ; boucle jusqu'a ce que ecx == 0
	mov eax, OFFSET chaine2      ; place dans EAX (retour) l'adresse de la chaine retournee 
	ret
invertStr ENDP
END