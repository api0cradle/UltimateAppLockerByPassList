# Verified Bypasses against Default AppLocker Rules
This list consists of verified AppLocker bypasses (that I have verified) against the default rules (including DLL). 
Please contribute and do point out errors or resources I have forgotten.


## 1. Msbuild.exe

`msbuild.exe pshell.xml`

Windows binary: Yes  
Bypasses AppLocker Default rules: Yes  

Verified on OS: 
- [ ] Windows 10 1803
- [ ] Windows 10 1709
- [ ] Windows 10 1607
- [ ] Windows 10 1511
- [ ] Windows 10 1507
- [ ] Windows 8.1
- [ ] Windows 8
- [ ] Windows 7

Notes:

* Links:  
  * https://gist.github.com/subTee/6b236083da2fd6ddff216e434f257614
  * http://subt0x10.blogspot.no/2017/04/bypassing-application-whitelisting.html
  * https://github.com/Cn33liz/MSBuildShell
  * https://github.com/Cn33liz/MS17-012
  * https://pentestlab.blog/2017/05/29/applocker-bypass-msbuild/
  * https://www.youtube.com/watch?v=aSDEAPXaz28
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/Trusted_Developer_Utilities.md
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/

  

## 2. Mshta.exe

`mshta.exe C:\poc\evilfile.hta`

* Windows binary: Yes  
* Bypasses AppLocker Default rules: Yes  

Verified on OS: 
- [ ] Windows 10 1803
- [ ] Windows 10 1709
- [ ] Windows 10 1607
- [ ] Windows 10 1511
- [ ] Windows 10 1507
- [ ] Windows 8.1
- [ ] Windows 8
- [ ] Windows 7

Notes:

* Links:  
  * https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_4
  * https://oddvar.moe/2017/12/21/harden-windows-with-applocker-based-on-case-study-part-2/



## 3. Regsvcs.exe

`regsvcs.exe /U regsvcs.dll`
`regsvcs.exe regsvcs.dll`

* Windows binary: Yes  
* Bypasses AppLocker Default rules: Yes  

Verified on OS: 
- [ ] Windows 10 1803
- [ ] Windows 10 1709
- [ ] Windows 10 1607
- [ ] Windows 10 1511
- [ ] Windows 10 1507
- [ ] Windows 8.1
- [ ] Windows 8
- [ ] Windows 7

* Notes:

* Links:  
  * https://pentestlab.blog/2017/05/19/applocker-bypass-regasm-and-regsvcs/
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Payloads/RegSvcsRegAsmBypass.cs
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/RegsvcsRegasm.md
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/



## 4. Regasm.exe

`regasm.exe /U regsvcs.dll`
`regasm.exe regsvcs.dll`

* Requires admin: 
* Windows binary: Yes  
* Bypasses AppLocker Default rules: Yes   

Verified on OS: 
- [ ] Windows 10 1803
- [ ] Windows 10 1709
- [ ] Windows 10 1607
- [ ] Windows 10 1511
- [ ] Windows 10 1507
- [ ] Windows 8.1
- [ ] Windows 8
- [ ] Windows 7

* Notes: /U does not require admin.

* Links:  
  * https://pentestlab.blog/2017/05/19/applocker-bypass-regasm-and-regsvcs/
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Payloads/RegSvcsRegAsmBypass.cs
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/RegsvcsRegasm.md
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/



## 5. InstallUtil.exe

`InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll`

* Windows binary: Yes  
* Bypasses AppLocker Default rules: Yes  

Verified on OS: 
- [ ] Windows 10 1803
- [ ] Windows 10 1709
- [ ] Windows 10 1607
- [ ] Windows 10 1511
- [ ] Windows 10 1507
- [ ] Windows 8.1
- [ ] Windows 8
- [ ] Windows 7

* Notes:

* Links:  
  * https://github.com/subTee/AllTheThings 
  * https://pentestlab.blog/2017/05/08/applocker-bypass-installutil/ 
  * https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_12 
  * http://subt0x10.blogspot.no/2017/09/banned-file-execution-via.html 
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/InstallUtil.md 
  * https://www.blackhillsinfosec.com/powershell-without-powershell-how-to-bypass-application-whitelisting-environment-restrictions-av/ 
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/
