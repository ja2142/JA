// JAApp.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include<Windows.h>
using namespace std;
extern "C" int _stdcall MyProc1(DWORD x, DWORD y);
int _tmain(int argc, _TCHAR* argv[])
{
	int x=1,y=2;
	int z;
	z = MyProc1(x,y);
	cout<<z<<endl;
	return 0;
}
