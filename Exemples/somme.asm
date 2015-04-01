
TITLE Somme
.386
.model flat,stdcall
PUBLIC somme 
.data
val1    DWORD  5
val2	DWORD	8
.code
somme PROC
mov eax,val1
    add eax,val2 
    ; le résultat est dans eax
    ret
somme ENDP
   END
