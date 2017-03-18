// JAApp.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include<Windows.h>
using namespace std;
typedef int(_stdcall *MYPROC)(DWORD x, DWORD y);
extern "C" int _stdcall MyProc1(DWORD x, DWORD y);
int _tmain(int argc, _TCHAR* argv[])
{
	HMODULE dll = LoadLibrary(L"../Debug/JADll");
	MYPROC f = (MYPROC) GetProcAddress(dll,"MyProc1");
	f(1, 1);
	int x=1,y=2;
	int z;
	z = MyProc1(x,y);
	cout << z << endl;
	FreeLibrary(dll);
	return 0;
}