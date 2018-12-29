############################################################################

function Get-AzureVM1
{
    [CmdletBinding()]

    Param ( 
    
            $VMname,
            $Region

            )


  Begin { "Starting" }
  Process { Write-Host "HI"}
  End  { "Ending" }


}

Get-AzureVM1 -Verbose

###########################Set Verbose###################
function Get-AzureVM2
{
    [CmdletBinding()]

    Param ( 
    
            $VMname,
            $Region

            )


  Begin { "Starting" }
  Process { Write-verbose "Trying to connect $Comp"

            Test-Connection
            Write-Verbose " Fetching inventory"
            
            Write-host "HI" }
  End  { "Ending" }


}

Get-AzureVM2
Get-AzureVM2 -Verbose

### Write-Debug / Write-Warning ---> Need to check at home ###

#####################Error Handling ###########################

$ErrorActionPreference
$Error

##############Try & Catch work in case of error action stop ##################

Try 

{ Get-Vinayak

}

Catch

{

Write-Host " This error is $_"

}

Try 

{ Get-Service -Name "Prath"

}

Catch

{

Write-Host " This error is $_"

}

Try 

{ Get-Service -Name "Prath" -ErrorAction Stop

}

Catch

{

Write-Host " This error is $_"

}

Try 

{ Get-Service -Name "Prath" -ErrorAction Silentlycontinue

}

Catch

{

Write-Host " This error is $_"

}

Try 

{ Test-Connection -ComputerName "TestVM" -ErrorAction Stop

}

Catch

{

Write-Host " This error is $_"

$_.Categoryinfo
#$_.Exception
#$_.errordetails


}

####################### Define Modules #######################





