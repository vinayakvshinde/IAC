########Function#####
function Get-Details
{ 
        Write-Host "My new Function"

        }
Get-Details
get-myjobs
. C:\Users\Administrator\Desktop\Myjob.PS1
Function Get-Serverdetails($computername)
{
  Write-Host "This is my computername $Computername"
}
Get-Serverdetails NTMSPC3
Function Get-Serverdetails($computername,$servicename)
{
  Write-Host "This is my computername $Computername service $servicename"
}
Get-Serverdetails NTMSPC3 BITS

Function Get-osdetails
{
   Param($compname)

   Write-Host $compname


}
Get-osdetails -compname NTMSPC3
Function Get-osdetails
{
   Param($compname,$servicename)

   Write-Host $compname $servicename


}
Get-osdetails -compname NTMSPC3 -servicename BITS
Function Get-osdetails
{
   Param($compname)

   $OS= Get-WmiObject -ComputerName $compname -Class Win32_operatingsystem
   $OS


}
Get-osdetails -compname PC2

######Advance Fucntion##################
Function Get-osdetails
{  [Cmdletbinding()]
   Param([Parameter (mandatory=$true)] $compname)

   $OS= Get-WmiObject -ComputerName $compname -Class Win32_operatingsystem
   $OS


}
Get-osdetails -compname PC2

Function Get-osdetails
{  [Cmdletbinding()]
   Param([Parameter (mandatory=$true,Helpmessage="Give Computer Name")] $compname)

   $OS= Get-WmiObject -ComputerName $compname -Class Win32_operatingsystem
   $OS


}
Get-osdetails
Function Get-osdetails
{  [Cmdletbinding()]
   Param([Parameter (mandatory=$true,Helpmessage="Give Computer Name")] [int]$compname)

   $OS= Get-WmiObject -ComputerName $compname -Class Win32_operatingsystem
   $OS


}
Get-osdetails
######Begin###Process####END#######

Function Get-Servicedisplayname
{
  

  Begin { Write-host "This is my Begin Block"}

  Process{ Write-Host "$($_.displayname)" }

  End { Write-Host " This is my End Block" }

    

}
get-service | Get-Servicedisplayname

Function Get-Servicedisplayname
{
  

  Begin { Write-host "$($_.displayname)"}

  Process{ Write-Host "$($_.displayname)" }

  End { Write-Host "$($_.displayname)" }

    

}

Function Get-Servicedisplayname
{
  

   Begin { }

  Process{ Write-Host "$($_.displayname)" }

  End { }

    

}

Function Get-Servicedisplayname
{
  
  [Cmdletbinding()]
   Param( [Parameter (Mandatory=$true,Valuefrompipelinebypropertyname=$true)]

   [int]$ID)


  Begin { Write-host "This is my Begin Block"}

  Process{ Write-Host "$($_.ID)"}

  End { Write-Host " This is my End Block" }

    

}
get-service | Get-Servicedisplayname
Get-Servicedisplayname
get-Process|Get-Servicedisplayname
Get-Help about_Functions_Advanced_Parameters -ShowWindow
Function Get-Servicedisplayname
{
  
  [Cmdletbinding()]
   Param( [Parameter (Valuefrompipelinebypropertyname=$true)]
   [ValidateNotNullOrEmpty()]

   $ID)


  Begin { Write-host "This is my Begin Block"}

  Process{ Write-Host "$($_.ID)"}

  End { Write-Host " This is my End Block" }

    

}

Get-Servicedisplayname -ID 96
Function Get-Servicedisplayname
{
  
  [Cmdletbinding()]
   Param( [Parameter (Valuefrompipelinebypropertyname=$true)]
   [ValidateSet("96","1000")]

   $ID)


  Begin { Write-host "This is my Begin Block"}

  Process{ Write-Host "$($_.ID)"}

  End { Write-Host " This is my End Block" }

    

}
$error.Clear
get-vinayak
$error
Get-prathmesh
$error[0]
$error.Count
$error[0] | gm
$error[0].Exception
$error[0].CategoryInfo
$error[0].CategoryInfo.Reason
$ErrorActionPreference
get-vinayak
Get-service
$ErrorActionPreference="SilentlyContinue"
get-vinayak
Get-service
$ErrorActionPreference="Inquire"
get-vinayak
Get-service
$ErrorActionPreference="Ignore"
get-vinayak
Get-service
get-vinayak4 -erroraction Ignore
Get-service
Test-Connection -ComputerName Prathmesh -ErrorAction Ignore

Try
{ Test-Connection -ComputerName Prathmesh1 }
Catch
{  Write-Host "Error occured $_" }

Try
{ Set-Kundan }
Catch
{  Write-Host "Error occured $($_)" 
$_.categoryInfo.reason

}