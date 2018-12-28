############################ Task to calculate number ####################################
Function Get-Numberdetail
{

[CmdletBinding()]
[outputtype([INT])]

Param (  

            [Parameter (mandatory=$true,Valuefrompipelinebypropertyname=$true,Position=0)]

            [Int]$a,

            [Parameter (mandatory=$true,Valuefrompipelinebypropertyname=$true,Position=1)]

            [INT]$b

      )

      $a+$b
      $a-$b
      $a/$b
      $a*$b


}

Get-Numberdetail 20 10