.386
.MODEL FLAT,STDCALL

OPTION CASEMAP:NONE

INCLUDE \masm32\include\windows.inc

.CODE

DllEntry PROC hInstDll:HINSTANCE, reason:DWORD, reserved1:DWORD

	mov eax, TRUE
	ret 

DllEntry ENDP


MyProc1 proc x:DWORD, y:DWORD
	
	xor eax,eax;
	mov eax,x
	mov ecx, y
	ror ecx, 1
	shld eax,ecx,2
	jnc ET1
	mul y
	ret

ET1:mul x
	neg y
	ret

MyProc1 endp

END DllEntry