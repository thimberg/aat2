// TimePicker.cpp : コンソール アプリケーションのエントリ ポイントを定義します。
//

#include "stdafx.h"
#include <clocale>
#include <Windows.h>
#include <iostream>
#include <locale>
#include <cstdio>
#include <chrono>
#include <thread>
#include <time.h>
#include <stdio.h>

int tt()
{
	setlocale(LC_ALL, "Japanese_Jpn.932");

	LARGE_INTEGER frequency;
	BOOL ret = QueryPerformanceFrequency(&frequency);
	if (ret == 0) {
		std::wcerr << L"この計算機は高精度タイマーをサポートしていません。" << std::endl;
		return 1;
	}
	std::wcout << L"この計算機の高精度タイマー分解能は、" <<
		frequency.QuadPart << L" Hzです。" << std::endl;
	return 0;
}

int _tmain(int argc, _TCHAR* argv[])
{
	int a = 1;

	tt();
	
	LARGE_INTEGER freq, t1, t2;
	QueryPerformanceFrequency(&freq);
	double average1 = 0;
	for (a = 0; a < 1000; a++)
	{
		QueryPerformanceCounter(&t1);
		Sleep(1);
//		std::this_thread::sleep_for(std::chrono::milliseconds(1));
//		std::this_thread::sleep_for(std::chrono::microseconds(100));
		QueryPerformanceCounter(&t2);
		average1 += (double)(t2.QuadPart - t1.QuadPart) / freq.QuadPart * 1000;
	}
	std::cout << "1000 times average duration = " << average1 / 1000 << "ms.\n";

//	std::cout << "HighPart:" << t1.HighPart << "  LowPart:" << t1.LowPart << "  QuadPart:" << t1.QuadPart << "\n";
//	std::cout << "HighPart:" << t2.HighPart << "  LowPart:" << t2.LowPart << "  QuadPart:" << t2.QuadPart << "\n";
//	std::cout << "duration = " << (double)(t2.QuadPart - t1.QuadPart) / freq.QuadPart * 1000 << "ms.\n";

	auto start = std::chrono::high_resolution_clock::now();

	std::this_thread::sleep_for(std::chrono::milliseconds(1));

	auto finish = std::chrono::high_resolution_clock::now();
	std::cout << std::chrono::duration_cast<std::chrono::nanoseconds>(finish - start).count() << "ns\n";
	std::cout << std::chrono::duration_cast<std::chrono::microseconds >(finish - start).count() << "us\n";
	std::cout << std::chrono::duration_cast<std::chrono::milliseconds >(finish - start).count() << "ms\n";

	std::cout << "Now:" << std::chrono::high_resolution_clock::now<< "\n";
	std::cout << "clock:" << ((float)clock()) / CLOCKS_PER_SEC << "\n";

	SYSTEMTIME lt;
	GetLocalTime(&lt);
	std::cout << lt.wMilliseconds;

	return 0;
}

