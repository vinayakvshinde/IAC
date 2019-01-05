#######################Write DSC configuration #############################

Configuration Config1

{ 
    Import-DscResource -ModuleName psdesiredstateconfiguration

    Node PC2

    {  
        Service Bits-Service

            {

              Name="BITS"
              State="Stopped"


            }




     }


}

Config1 -OutputPath E:\Demo
Get-Service -Name *BITS*
Start-Service -Name *BITS*
Start-DscConfiguration -Path E:\Demo -Verbose
#Get Job##
Get-Job
## Get Job status information##
Get-Job -Id 5 | select -Verbose | fl
Get-Help Receive-Job -Examples
$Work =Get-Job -ID 5 | Receive-Job -Keep
$Work


####### NEW DSC Configration ######

Configuration NewHostfile

{ 
    Import-DscResource -ModuleName Xnetworking

    Node PC2

    {  
        xHostsfile Host-IPaddress

            {

              HostName="DineshPC"
              IPAddress="10.0.0.1"


            }




     }


}
NewHostfile -OutputPath E:\Demo

Start-DscConfiguration -Path E:\Demo -Wait -Verbose
Get-Job
$WorkJob= Get-Job -id 5 | Receive-Job -Keep
Get-Job -id 5 | select -Verbose | fl
Get-Help get-job -Examples
$Error
###### Remove Host Entry################
Configuration NewHostfile

{ 
    Import-DscResource -ModuleName Xnetworking

    Node PC2

    {  
        xHostsfile Host-IPaddress

            {

              HostName="DineshPC"
              IPAddress="10.0.0.1"
              Ensure="Absent"

            }




     }


}

Newhostfile -OutputPath E:\demo\Config
Start-DscConfiguration -Path E:\Demo\Config -Wait -Verbose





