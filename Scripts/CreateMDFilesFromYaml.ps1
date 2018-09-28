#A hacky script to convert YML to MD file the way I want
#Author: Oddvar Moe
#If you can use it, be my guest!

function Convert-YamlToMD
{
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        $YamlObject,

        [Parameter(Mandatory=$true)]
        [String]
        $Outfile
    )

    Begin
    {
    }
    Process
    {
        # Header
        "`#`# $($YamlObject.Name)" | Add-Content $Outfile
        "``````" | Add-Content $Outfile
        foreach($cmd in $YamlObject.Commands)
        {
            "`n$($cmd.command)" | Add-Content $Outfile
            "$($cmd.description)" | Add-Content $Outfile
        }
        "``````" | Add-Content $Outfile
        "* Windows binary: $($YamlObject.'Windows Binary')   " | Add-Content $Outfile
        "* Bypasses Default AppLocker Rules: $($YamlObject.'Bypasses Default AppLocker Rules')   " | Add-Content $Outfile
        "* Mitre: `[$($YamlObject.MITRE.ID)`]`($($YamlObject.MITRE.Link)`)   " | Add-Content $Outfile
        
        "   " | Add-Content $Outfile

        "* Links:   " | Add-Content $Outfile
        foreach($link in $YamlObject.Resources)
        {
            "  * $($link.link)" | Add-Content $Outfile
        }

        "   " | Add-Content $Outfile

        "* File path:   " | Add-Content $Outfile
        foreach($path in $YamlObject.'Full path')
        {
           "  * $($path.path)" | Add-Content $outfile
        }
        
        "   " | Add-Content $Outfile
        
        "* Acknowledgement:   " | Add-Content $Outfile
        foreach($person in $YamlObject.Acknowledgement)
        {
            "  * Name: $($person.Name)" | Add-Content $Outfile
            "    * Twitter: `[$($person.TwitterHandle)`]`(https://twitter.com/$($person.TwitterHandle)`)" | Add-Content $Outfile
            "    * Blog: $($person.Blog)" | Add-Content $Outfile
        }
        
        "   " | Add-Content $Outfile

        "OS:  " | Add-Content $Outfile
        foreach($OS in $YamlObject.'Verified on OS')
        {
            if($OS.Values -eq "true")
            {
                "`- `[x`] $($OS.Keys)" | Add-Content $Outfile
            }
        }

    }
    End
    {
    }
}


function Add-MainIndex
{
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        $YamlObject,

        [Parameter(Mandatory=$true)]
        [String]
        $Outfile
    )

    Begin
    {
    }
    Process
    {
        # Header
        # OS BINARIES
        #[Atbroker.exe](OSBinaries/Atbroker.md)    
        "`[$($YamlObject.Name)`]`(md/$($YamlObject.Name).md`)" | Add-Content $Outfile
        "" | Add-Content $Outfile
    }
    End
    {
    }
}

function New-MainIndex
{
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        [String]
        $Outfile,

        [ValidateSet("Verified","NotVerified")]
        [Parameter(Mandatory=$true)]
        [String]
        $Status
    )

    Begin
    {
    }
    Process
    {
        # Verified Header
        if($Status -eq "Verified")
        {
            "`# Verified AppLocker bypasses for Default rules" | Add-Content $Outfile
            "This list contains all the bypasses that has been verified to bypass AppLocker default rules." | Add-Content $Outfile
            "" | Add-Content $Outfile
        }

        #NotVerified Header
        if($Status -eq "NotVerified")
        {
            "`# Potential bypasses" | Add-Content $Outfile
            "This list contains all the bypasses that has NOT been verified, or does not bypass the default AppLocker rules (but can bypass AppLocker in other ways) or is a claimed bypass." | Add-Content $Outfile
            "" | Add-Content $Outfile
        }
    }
    End
    {
    }
}

$mainpath = "C:\data\gitprojects\UltimateAppLockerByPassList"

# Read yaml files
$bins = @()
cd "$mainpath\yml"
get-childitem | foreach{ 
    [string[]]$fileContent = Get-Content $_
    $content = ''
    foreach ($line in $fileContent) { $content = $content + "`n" + $line }
    $yaml = ConvertFrom-YAML $content
    $bins += $yaml
}

#Initialize index files
New-MainIndex -Status Verified -Outfile $mainpath"\VerifiedAppLockerBypasses.md"
New-MainIndex -Status NotVerified -Outfile $mainpath"\UnverifiedAppLockerBypasses.md"

$bins | foreach{
WRITE-HOST "$($_.name)"

Convert-YamlToMD -YamlObject $_ -Outfile "$mainpath\md\$($_.name).md"
if($_.'Bypasses Default AppLocker Rules')
{
    Add-MainIndex -YamlObject $_ -Outfile $mainpath"\VerifiedAppLockerBypasses.md"
}
else{
    Add-MainIndex -YamlObject $_ -Outfile $mainpath"\UnverifiedAppLockerBypasses.md"
}
}

