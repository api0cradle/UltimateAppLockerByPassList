## Regasm.exe
```

regasm.exe /U AllTheThingsx64.dll
Loads the target .DLL file and executes the UnRegisterClass function.

regasm.exe AllTheThingsx64.dll
Loads the target .DLL file and executes the RegisterClass function.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: True   
* Mitre: [T1121](https://attack.mitre.org/wiki/Technique/T1121)   
   
* Links:   
  * https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1121/T1121.md#atomic-test-1---regasm-uninstall-method-call-test
  * https://pentestlab.blog/2017/05/19/applocker-bypass-regasm-and-regsvcs/
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/
   
* File path:   
  * C:\Windows\Microsoft.NET\Framework\v2.0.50727\regasm.exe
  * C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regasm.exe
  * C:\Windows\Microsoft.NET\Framework\v4.0.30319\regasm.exe
  * C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regasm.exe
   
* Acknowledgement:   
  * Name: Casey Smith
    * Twitter: [@Subtee](https://twitter.com/@Subtee)
    * Blog: https://subt0x11.blogspot.com/
   
OS:  
