# My Collection of AppLocker Hardening Rules

I have added all bypasses I know of from my list and from this list:
https://docs.microsoft.com/nb-no/windows/security/threat-protection/device-guard/steps-to-deploy-windows-defender-application-control

**IMPORTANT:  
These rules have had minimal of testing in a live environment.  
This ruleset can break stuff. Just sayin.
The ruleset will block stuff like powershell/cmd.**


I have exported all the rules into seperate XML files. 

I prefer to have the following structure when it comes to implementing these rules. 

![Alt text](image/AppLocker-Structure.jpg?raw=true "AppLocker Structure")
When you have this structure you have your allowed rules in the "AppLocker-Default-Rules" and add the different block rules you want in
seperate GPO's. The client will combine all the rules and apply them. 

To import the rules you create a new group policy and navigate to the AppLocker policy like this:   
![Alt text](image/ImportRules-1.jpg?raw=true "Importing AppLocker rules")

Then you choose the rules you want to import and choose open like this:   
![Alt text](image/ImportRules-2.jpg?raw=true "Importing AppLocker rules")

Answer yes that you want to import it:   
![Alt text](image/ImportRules-3.jpg?raw=true "Importing AppLocker rules")

A verification of the number of rules that was imported shows up:   
![Alt text](image/ImportRules-4.jpg?raw=true "Importing AppLocker rules")

The rules should now be visible in the GUI like this:   
![Alt text](image/ImportRules-5.jpg?raw=true "Importing AppLocker rules")


I am still missing signatures for these binaries:   
* dnx.exe
* fsianycpu.exe
* lxssmanager.dll
* rcsi.exe   
Will add them as soon as I got my hands on them.

I take NO responsibility for systems not working with these rules. 
If you can use them, great. If not, don't come crying to me. 