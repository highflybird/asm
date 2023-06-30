// tst.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"

#include <iostream>
#include <memory> // 头文件中包含了unique_ptr

using namespace std;



int _tmain(int argc, _TCHAR* argv[])
{
	// 声明一个unique_ptr对象，创建一个字符串，并将其所有权转移给unique_ptr对象
	unique_ptr<TCHAR[]> str1(new TCHAR[20]);
	_tcscpy(str1.get(), _T("Hello, World!"));

	// 使用unique_ptr对象创建另一个unique_ptr对象
	unique_ptr<TCHAR[]> str2(move(str1));

	// 输出拷贝结果
	cout << "str1: " << str1.get() << endl; // 输出空字符串
	cout << "str2: " << str2.get() << endl; // 输出Hello, World!

	return 0;
}

