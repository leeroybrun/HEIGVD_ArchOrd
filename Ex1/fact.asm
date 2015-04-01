
TITLE fact
.386
.model flat,stdcall
PUBLIC fact 
.data
val1    DWORD  5
.code
fact PROC
mov ecx,val1
mov eax,1
loopstart:
	mul ecx
	loopw loopstart

    ret
fact ENDP
   END
