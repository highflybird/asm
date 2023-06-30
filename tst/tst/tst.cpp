// tst.cpp : �������̨Ӧ�ó������ڵ㡣
//

#include "stdafx.h"

#include <iostream>
#include <memory> // ͷ�ļ��а�����unique_ptr

using namespace std;



int _tmain(int argc, _TCHAR* argv[])
{
	// ����һ��unique_ptr���󣬴���һ���ַ���������������Ȩת�Ƹ�unique_ptr����
	unique_ptr<TCHAR[]> str1(new TCHAR[20]);
	_tcscpy(str1.get(), _T("Hello, World!"));

	// ʹ��unique_ptr���󴴽���һ��unique_ptr����
	unique_ptr<TCHAR[]> str2(move(str1));

	// ����������
	cout << "str1: " << str1.get() << endl; // ������ַ���
	cout << "str2: " << str2.get() << endl; // ���Hello, World!

	return 0;
}

