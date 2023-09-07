$source = Read-Host "Enter source folder path"
$destination = Read-Host "Enter destination folder path"
$timestamp = Get-Date -Format "yyyyMMddHHmmss"
Copy-Item -Path $source -Destination "$destination\_Backup_$timestamp" -Recurse
