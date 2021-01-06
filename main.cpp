#include <iostream>
#include <string>

extern "C" void __fastcall bubblesort(__int64* arr, __int64 arr_size);

void print_array(__int64* arr, __int64 arr_size)
{
	arr_size--;
	for(__int64 i = 0; i <= arr_size; i++)
	{
		std::cout << std::to_string(arr[i]);
		if(i < arr_size)
		{
			std::cout << ", ";
		}
	}
	std::cout << std::endl;
}

int main()
{
	__int64 arr[] = {3, 1, 2};
	print_array(arr, 3);
	bubblesort(arr, 3);
	print_array(arr, 3);
	return 0;
}
