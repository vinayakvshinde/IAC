Get-ChildItem C:\Windows -File | Where-Object {$_.Name -match '\w\d{2}'} | Select-Object Name
Get-ChildItem C:\Windows\WindowsUpdate.log -File | Select-String -Pattern "Agent"
"192.168.1.25" -match '([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4])$'
0 -match '^([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4])$'
"vinayak.shinde@cmc.com" -match '^([A-Z]\d\_\.-)\@\([A-Z]\d\.-)$'