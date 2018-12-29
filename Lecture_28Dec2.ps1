New-ModuleManifest -Path "C:\Users\Administrator\Documents\WindowsPowerShell\Modules\getinfo\getinfo.psd1"
$env:PSModulePath
Get-Module -ListAvailable
Import-Module -Name Getinfo
Get-Info
$PSVersionTable
Remove-Module -Name getinfo
Get-Command -Module getinfo

New-ModuleManifest -Path "C:\Users\Administrator\Documents\WindowsPowerShell\Modules\writehello\writehello.psd1"
Import-Module -Name "writehello" -Force
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
Write-Hello
Get-Help Import-Module -ShowWindow
Import-Module -Name 'writehello' -Force

