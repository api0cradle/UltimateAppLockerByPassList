# Bypass DLL Default AppLocker Rules
The goal of this list is document a verified list of known bypasses using AppLocker Default Rules for DLL whitelisting.
Please contribute and do point out errors or resources I have forgotten.


## 1. Msbuild.exe

`msbuild.exe pshell.xml`

Requires admin: No
Windows binary: Yes  
Bypasses AppLocker Default rules: Yes  

Notes:

Links:  
https://github.com/Cn33liz/MSBuildShell
https://github.com/Cn33liz/MS17-012
https://pentestlab.blog/2017/05/29/applocker-bypass-msbuild/
https://www.youtube.com/watch?v=aSDEAPXaz28
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/Trusted_Developer_Utilities.md
https://oddvar.moe/2017/12/13/harden-windows-with-applocker-based-on-case-study-part-1/


## 2. Mshta.exe

`mshta.exe C:\poc\evilfile.hta`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: Yes  

Notes:

Links:  
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_4
https://oddvar.moe/2017/12/21/harden-windows-with-applocker-based-on-case-study-part-2/



## 3. Regsvcs.exe

`regsvcs.exe /U regsvcs.dll`
`regsvcs.exe regsvcs.dll`

* Requires admin: No  
* Windows binary: Yes  
* Bypasses AppLocker Default rules: Yes  

* Notes:

* Links:  
  * https://pentestlab.blog/2017/05/19/applocker-bypass-regasm-and-regsvcs/
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Payloads/RegSvcsRegAsmBypass.cs
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/RegsvcsRegasm.md
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/



## 4. Regasm.exe

`regasm.exe /U regsvcs.dll`
`regasm.exe regsvcs.dll`

* Requires admin: /U does not require admin  
* Windows binary: Yes  
* Bypasses AppLocker Default rules: Yes   

* Notes:

* Links:  
  * https://pentestlab.blog/2017/05/19/applocker-bypass-regasm-and-regsvcs/
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Payloads/RegSvcsRegAsmBypass.cs
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/RegsvcsRegasm.md
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/



## 5. InstallUtil.exe

`InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll`

* Requires admin: No  
* Windows binary: Yes  
* Bypasses AppLocker Default rules: Yes  

* Notes:

* Links:  
  * https://github.com/subTee/AllTheThings 
  * https://pentestlab.blog/2017/05/08/applocker-bypass-installutil/ 
  * https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_12 
  * http://subt0x10.blogspot.no/2017/09/banned-file-execution-via.html 
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/InstallUtil.md 
  * https://www.blackhillsinfosec.com/powershell-without-powershell-how-to-bypass-application-whitelisting-environment-restrictions-av/ 
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/
