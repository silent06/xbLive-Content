detour<DWORD> ManifestOnPressHandlerOriginal;

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

DWORD ManifestOnPressHandlerHook(ManifestData* r3, DWORD r4, DWORD r5) {
	DWORD dwLR = 0;
	__asm mflr dwLR
	
	if (dwLR == 0x92324B88) {
		if (r3) {
			if (r3->pParam && (DWORD)r3->pParam > 0x30000000) {
				wstring p1(r3->pParam);
				string ps1(p1.begin(), p1.end());
				DWORD hash = GenerateHash(ps1.c_str());
				
				switch (hash) {
					case 0x0: RunOnCheckTime(); break;
					case 0x1: RunOnRedeemToken(); break;
				}
			}
		}
	}
	return ManifestOnPressHandlerOriginal.callOriginal(r3, r4, r5);
}

// hook
ManifestOnPressHandlerOriginal.setupDetour(0x92329148, ManifestOnPressHandlerHook);