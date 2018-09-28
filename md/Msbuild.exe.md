## Msbuild.exe
```

msbuild.exe pshell.xml
Build and execute a C# project stored in the target XML file.

msbuild.exe Msbuild.csproj
Build and execute a C# project stored in the target CSPROJ file.
```
* Windows binary: True   
* Bypasses Default AppLocker Rules: True   
* Mitre: [T1127](https://attack.mitre.org/wiki/Technique/T1127)   
   
* Links:   
  * https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1127/T1127.md
  * https://github.com/Cn33liz/MSBuildShell
  * https://pentestlab.blog/2017/05/29/applocker-bypass-msbuild/
  * https://oddvar.moe/2017/12/13/applocker-case-study-how-insecure-is-it-really-part-1/
   
* File path:   
  * C:\Windows\Microsoft.NET\Framework\v2.0.50727\Msbuild.exe
  * C:\Windows\Microsoft.NET\Framework64\v2.0.50727\Msbuild.exe
  * C:\Windows\Microsoft.NET\Framework\v3.5\Msbuild.exe
  * C:\Windows\Microsoft.NET\Framework64\v3.5\Msbuild.exe
  * C:\Windows\Microsoft.NET\Framework\v4.0.30319\Msbuild.exe
  * C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Msbuild.exe
   
* Acknowledgement:   
  * Name: Casey Smith
    * Twitter: [@Subtee](https://twitter.com/@Subtee)
    * Blog: https://subt0x11.blogspot.com/
  * Name: Cn33liz
    * Twitter: [@Cneelis](https://twitter.com/@Cneelis)
    * Blog: http://cn33liz.blogspot.com/
   
OS:  
- [x] Windows 10 1703
