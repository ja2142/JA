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
	add eax,128;
	add eax,1
	STD;
	POPF
	CLD
	mov eax,4294967295;2^32-1
	add eax,1
	mov eax,2147483647
	add eax,1
	xor eax,eax;
	mov eax,8
	add eax,8
	xor eax,eax;
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