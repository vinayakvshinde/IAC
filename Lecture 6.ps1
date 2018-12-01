 Get-Help about_Regular* -ShowWindow
 New-Item -ItemType file -Value "This is Warning" -Path C:\Log.txt
 $Xinput =Get-Content C:\Log.txt
 $Xinput |gm
 Get-Member -InputObject $Xinput
 $Xinput[0]
 foreach($onesentence in $Xinput)
 { if ($onesentence -match "error$")
        { Write-Host "This error exist in file"}
        }
"a" -match "[a-d]"
"e" -match "[a-d]"
"a" -match "[a-dw]"
"e" -match "[a-dw]"
"aa" -match "[a-dw]"
"aa" -match "^[a-de]$"
"e" -match "^[a-de]$"
"z" -match "^[a-de]$"
"aa" -match "^[a-dn]{2}$"
"an" -match "^[a-dn]{2}$"
"abda" -match "^[b-da]{4}$"
"aacd" -match "^[b-da]{3,4}$"
"zx" -match "^[b-da]{0,1}$"
"" -match "^[b-da]{0,1}$"
"zx" -match "^[^b-da]{1,3}$"
"zx" -match "^[z-pa]{1,2}$"
"abc" -match "^[abc]{3}$"
"bac" -match "^[abc]{3}$"
"acbd" -match "^[abc]{3}$"
"ab" -match "^[abc]{1,3}$"
"abc" -match "^[a-d]{3,5}[-]$"
"abc-" -match "^[a-d]{3,5}[-]$"
"ab-c" -match "^[a-d]{3,5}[-]$"
"abcd-" -match "^[a-d]{3,5}[-]$"
"abc-/" -match "^[a-d]{3,5}[-/]$"
"abc-/" -match "^[a-d]{3,5}[-/.]$"
"abc-." -match "^[a-d]{3,5}[-/.]$"
"abc-." -match "^[a-d]{3,5}[-/.]?$"
"qzr-!ng" -match "^\w?"
"09" -match "^0?[1-9]$"
"1" -match "^1[0-9]$"
"" -match "^\w?$"
"1"-match "^\w$"
"" -match "^\w$"
"1" -match "^\d\d$"
"1a" -match "^[0-9]$"
"9z9" -match "[0-9]$"
 7 -match "^[0-56]$"
 "21" -match "^[0-5][12]$"
 "05" -match "^[0-1][345]$"
 "43" -match "^[0-1]?[345]$"
 "63" -match "^[0-1]|[345]$"
 "59" -match "^[0-1]|[345]$"
 "0" -match "^([0-1]|[345])$"
 "02-11-80" -match"^(0?[1-9]|[12][0-9]|3[0-1])[-](0?[1-9]|1[0-2])[-]\d\d$"
 "2-11-80" -match"^(0?[1-9]|[12][0-9]|3[0-1])[-](0?[1-9]|1[0-2])[-]\d\d$"
 "12-11-80" -match"^(0?[1-9]|[12][0-9]|3[0-1])[-](0?[1-9]|1[0-2])[-]\d\d$"
 "12-10-90" -match"^(0?[1-9]|[12][0-9]|3[0-1])[-](0?[1-9]|1[0-2])[-]\d\d$"
 "12-11-89" -match"^(0?[1-9]|[12][0-9]|3[0-1])[-](0?[1-9]|1[0-2])[-]\d\d$"
 "32-10-80" -match"^(0?[1-9]|[12][0-9]|3[0-1])[-](0?[1-9]|1[0-2])[-]\d\d$"
 "12-12-90" -match"^(0?[1-9]|[12][0-9]|3[0-1])[-](0?[1-9]|1[0-2])[-]\d\d$"
 $var = Read-Host
 if ( $var -match "^(0?[1-9]|[12][0-9]|3[0-1])[-](0?[1-9]|1[0-2])[-]\d\d$")
   { Write-Host "Your Value is Correct" -ForegroundColor Green}
   else { Write-host "Your Value is Incorrect" -ForegroundColor Red}
$credential = Get-Credential
$Username = "Vinayakvs"
$Password = "Indi@123" | ConvertTo-SecureString -AsPlainText -Force
$Cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Username,$Password
$Pass= $password | ConvertFrom-SecureString
$Pass | Out-File "C:\pass.txt"
$password = Get-Content C:\pass.txt | ConvertTo-SecureString
$profile
$HOME
New-Item -ItemType file -path C:\Users\Administrator\Documents\WindowsPowerShell\Microsoft.PowerShellISE_profile.ps1
ii $profile
$hastable = @{ Fname= "Vinayak";Lname="Shinde"}
$object = [PScustomobject]$hastable
$object | GM
$object.Fname
$object.Lname