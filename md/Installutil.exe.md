## Installutil.exe
```

InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll
Execute the target .NET DLL or EXE using the uninstall method.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: True   
* Mitre: [T1118](https://attack.mitre.org/wiki/Technique/T1118)   
   
* Links:   
  * https://pentestlab.blog/2017/05/08/applocker-bypass-installutil/
  * https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_12
  * https://www.blackhillsinfosec.com/powershell-without-powershell-how-to-bypass-application-whitelisting-environment-restrictions-av/
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/
  * https://www.rapid7.com/db/modules/exploit/windows/local/applocker_bypass
   
* File path:   
  * C:\Windows\Microsoft.NET\Framework\v2.0.50727\InstallUtil.exe
  * C:\Windows\Microsoft.NET\Framework64\v2.0.50727\InstallUtil.exe
  * C:\Windows\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe
  * C:\Windows\Microsoft.NET\Framework64\v4.0.30319\InstallUtil.exe
   
* Acknowledgement:   
  * Name: Casey Smith
    * Twitter: [@Subtee](https://twitter.com/@Subtee)
    * Blog: https://subt0x11.blogspot.com/
   
OS:  
- [x] Windows 10 1703
