# Bypass DLL Default AppLocker Rules
The goal of this list is document a verified list of known bypasses using AppLocker Default Rules for DLL whitelisting.
Please contribute and do point out errors or resources I have forgotten.


## 1. Msbuild.exe

`msbuild.exe pshell.xml`

Requires admin: No

Notes:

Links:  
https://github.com/Cn33liz/MSBuildShell
https://github.com/Cn33liz/MS17-012
https://pentestlab.blog/2017/05/29/applocker-bypass-msbuild/
https://www.youtube.com/watch?v=aSDEAPXaz28
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/Trusted_Developer_Utilities.md

