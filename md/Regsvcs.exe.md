## Regsvcs.exe
```

regsvcs.exe /U regsvcs.dll
Loads the target .DLL file and executes the UnRegisterClass function.

regsvcs.exe regsvcs.dll
Loads the target .DLL file and executes the RegisterClass function.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: True   
* Mitre: [T1121](https://attack.mitre.org/wiki/Technique/T1121)   
   
* Links:   
  * https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1121/T1121.md#atomic-test-2---regsvs-uninstall-method-call-test
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Payloads/RegSvcsRegAsmBypass.cs
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/
   
* File path:   
  * C:\Windows\Microsoft.NET\Framework\v2.0.50727\regsvcs.exe
  * C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regsvcs.exe
  * C:\Windows\Microsoft.NET\Framework\v4.0.30319\regsvcs.exe
  * C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regsvcs.exe
   
* Acknowledgement:   
  * Name: Casey Smith
    * Twitter: [@Subtee](https://twitter.com/@Subtee)
    * Blog: https://subt0x11.blogspot.com/
   
OS:  
