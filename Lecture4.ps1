Get-Help about_for -ShowWindow
$B=@(1,2,3,4,5)
For($C=0;$C-le 4;$C++)
{$B[$C]}
$star=@("*","*","*","*")
For($S=0;$S-lt 4;$S++)
{$star[$S]}
$star=@("*","*","*","*")
For($E=4;$E-ge 1;$E--)
{ For($F=0;$F-lt $E;$F++)
{Write-Host "*" -NoNewline} 
Write-host""}

$star=@("*","*","*","*")
For($D=0;$D -le 4;$D++)
{For($E=0;$E -lt $D;$E++)
{Write-host "*" -NoNewline}
Write-host""}
Get-Help Get-ChildItem -Examples
Get-Command -Noun Process
For($E=1;$E-le 10;$E++)
{New-Item -ItemType file -Path "C:\vinayak\$E.txt"}
$files=Get-ChildItem -path C:\vinayak
Foreach($file in $files)
{Remove-Item -Path $file.FullName}
Foreach($file in $files)
{$file | Remove-Item}
Get-Help about_while -ShowWindow
Get-Help about_if -ShowWindow
While(get-process -Name notepad)
{ Stop-Process -Name notepad }
$dll=Get-ChildItem -path C:\Windows\System32\*.dll
$time=(get-date).AddYears(-3)
Foreach($file in $dll)
       { 
            if ($file.CreationTime -lt $time)
            { Write-Host "This file $($file.name) is older than 2015" -ForegroundColor Green}
            else
            { Write-Host "This file $($file.name) is not Older than 2015" -ForegroundColor Red}
            $($file.Name) | Out-File -FilePath "C:\Vinayak\Dll.txt" -Append
            
            }

Get-Process | Export-Csv c:\vinayak\process.csv
$pro=Import-Csv "c:\vinayak\process.csv"
$newstate=Get-Process
Foreach($new in $newstate)
        { 
        
        if ( $pro | ?{$_.Name -eq $new.name} )

        { Write-Host "No worry"}
        else
        { $new.Name | Out-File -FilePath "C:\vinayak\new.csv" -Append }}
[System.Collections.ArrayList]$array=@(1,2,3,4,5)
$array.Remove(2)
$array
