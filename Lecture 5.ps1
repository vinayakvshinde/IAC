get-service | gm
$Services= Get-Service
foreach($service in $Services)
{$service.starttype
if($service.starttype -eq "Automatic")
{ Write-Host "This $($Service.name) starttype is Automatic"}
elseif($service.starttype -eq "Manual")
{ Write-Host "This $($Service.name) starttype is Manual"}
else { Write-Host "This $($Service.name) starttype is Disabled"}}
$Services= Get-Service
foreach($service in $Services)
{ switch($service.starttype)
  {"Automatic" {$info="This $($Service.name) starttype is Automatic"}
  "Manual" {$info ="This $($Service.name) starttype is Manaul"}
  "Disables" {$info ="This $($Service.name) starttype is Manaul"}
  }
  $info | Out-File C:\service.txt -Append}

 Get-Help about_Regular* -ShowWindow
 $var=Read-Host
 if($var -match"^[a-z]{3}-[a-z]{2}-[a-z]{1}$")
    { Write-Host "This is my Value" -ForegroundColor Green}
    else 
        { Write-Warning "Wrong Value"

            Read-Host}
$a=$true
While($a)
{Write-Host "$a"
$a=$false
}
$a=$true
While($a)
{$var=Read-Host
 if($var -match"^[a-z]{3}-[a-z]{2}-[a-z]{1}$")
    { Write-Host "This is my Value" -ForegroundColor Green
    $a=$false}
    else 
        { Write-Host "You entered wrong value"}
            }

$Azurevm=New-Object System.Object
$Azurevm | Add-Member -MemberType NoteProperty -Name "TestVM" -Value "MyVM"
$Azurevm | Add-Member -MemberType NoteProperty -Name "Status" -Value "Running"
$Azurevm.name
$Azurevm.Status="Running"

$Users=New-Object System.Object
$Users | Add-Member -MemberType NoteProperty -Name "fname" -Value "Vinayak"
$Users | Add-Member -MemberType NoteProperty -Name "Lname" -Value "Shinde"
$Users | Add-Member -MemberType ScriptMethod -Name "samaccountname" -Value{"$($($this.fname).substring(0,1))"+"$($this.Lname)"}
$Users.samaccountname()


$ADusers=@()
$Users.fname="Anish"
$Users.lname="Nair"
$ADusers+=$Users
$Users.fname="Kundan"
$Users.lname="Patil"
$ADusers+=$Users
$ADUsers