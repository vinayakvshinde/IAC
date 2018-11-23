#region Task1: Find Event logs from log system within past 12 hours
Get-EventLog -LogName System -after(Get-Date).AddHours(-12)
#Task 2 :Find all the files from temp location and count the files
(Get-ChildItem -File C:\Windows\temp).Count
#Task 3: Get files from C:\windows\system32 only dll file and unblock all files
Get-ChildItem -File C:\Windows\System32\*.Dll | Unblock-File
#Task 4 : Creat 20 log files and change the extension to txt
For($E=1;$E-le 20;$E++)
{New-Item -ItemType file -Path "C:\vinayak\$E.log"} 
Get-ChildItem C:\vinayak\*.log | Rename-Item -NewName {$_.Name -replace '\.log','.txt'}
#endregion