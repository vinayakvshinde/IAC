#region Command to produce random numbers
Get-Command -Noun Random
Get-help Get-Random -Examples
Get-help Get-Random -Detailed
Get-Random
#Command to display current date and time
Get-Command -Noun Date
Get-help Get-Date -Examples
$mydate=Get-Date
$mydate.GetType()
$mydate.DateTime
$mydate.DateTime |Get-Member
#Command to display hotfix
Get-Command -Noun Hotfix
Get-HotFix
#Command to display list of 50 newest entries from security log
Get-Help Get-EventLog -Detailed
Get-EventLog -LogName Security -Newest 50
#endregion