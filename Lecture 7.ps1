Get-Help about_class -ShowWindow
# Defining a class
Class VM
{ $Name
  [string]status()
  {
     Return "Stopped"
     }
     }
##PSREMOTING##
Enable-PSRemoting
Enter-PSSession -Credential $credential -ComputerName "PC-NTMS20"
$credential=Get-Credential
get-help New-SelfSignedCertificate -Examples
New-SelfSignedCertificate -DnsName PC2 -CertStoreLocation "Cert:\LocalMachine\My"
Get-Help Enable-PSRemoting -ShowWindow
Get-PSProvider
Get-ChildItem WSMan:\localhost\Client\TrustedHosts
New-Item -Path WSMan:\localhost\Listener -Transport HTTPS -Address * -CertificateThumbPrint "BEEBA07BC396FF63A49F6B1BAE8FA089ACB3546A"
Set-Item -Path WSMan:\localhost\Client\TrustedHosts -Value "1.1.1.1"
Set-Item -Path WSMan:\localhost\Client\TrustedHosts -Value "192.168.1.50"
Set-Item -Path WSMan:\localhost\Client\TrustedHosts -Value "1.1.1.1" -Concatenate
Enter-PSSession -ComputerName PC2 -Credential $credential
$Seesion=New-PSSessionOption -SkipCACheck
Enter-PSSession -ComputerName PC_NTMS20 -Credential $credential -UseSSL -Port 5986 -SessionOption $Seesion
Invoke-Command -ComputerName PC_NTMS20 -Credential $credential -UseSSL -Port 5986 -SessionOption $Seesion -ScriptBlock {Get-Service}
Get-Help Invoke-Command -ShowWindow
New-PSSession -ComputerName PC_NTMS20 -Credential $credential -UseSSL -Port 5986 -SessionOption $Seesion
Enter-PSSession -id 15
Get-PSSession -id 15 | Enter-PSSession
$Servicename = @("BITS","WinRM")
Invoke-Command -ComputerName PC_NTMS20 -Credential $credential -UseSSL -Port 5986 -SessionOption $Seesion -ArgumentList $Servicename -ScriptBlock {Get-Service -Name $args[0]}
$service = Invoke-Command -ComputerName PC_NTMS20 -Credential $credential -UseSSL -Port 5986 -SessionOption $Seesion -ArgumentList $Servicename -ScriptBlock {Get-Service -Name $args[0]}
$Service.Status
Invoke-Command -ComputerName PC_NTMS20 -Credential $credential -UseSSL -Port 5986 -SessionOption $Seesion -ScriptBlock {Get-Service -Name $Using:Servicename}
$Comp= PC_NTMS20