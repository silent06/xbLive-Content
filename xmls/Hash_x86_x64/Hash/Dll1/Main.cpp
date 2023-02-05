#include "stdafx.h"

DWORD GenerateHash(const char* value) {
	size_t len = strlen(value);
	unsigned int hash = 0;
	unsigned int i = 0;

	for (hash = i = 0; i < len; ++i) {
		hash += tolower(value[i]);
		hash += (hash << 10);
		hash ^= (hash >> 6);
	}

	hash += (hash << 3);
	hash ^= (hash >> 11);
	hash += (hash << 15);

	return hash;
}

EXTERN_C {
	__declspec(dllexport) void StringHash(char* Input, BYTE* Result) {
		DWORD HashResult = 0;

		HashResult = GenerateHash(Input);

		for (int i = 0; i < 4; i++) {
			Result[i] = ((BYTE*)&(HashResult))[4 - i - 1];
		}
	}
}
