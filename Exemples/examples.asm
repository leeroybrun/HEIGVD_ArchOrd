
; -----------------
;  Division
; -----------------
; poids forts dans edx
; poids faibles dans eax
mov edx, 0 ; mettre edx à 0, si petite valeur qui tient totalement dans eax
mov eax, 8
mov ecx, 2
div ecx

; resultat dans eax
; modulo dans edx