$storageSpacesStatus = Get-Disk | Where-Object BusType -Eq Spaces 


$storageSpacesStatusList = $storageSpacesStatus |
Format-List -Property FriendlyName, HealthStatus, Size, OperationalStatus | Out-String



Send-MailMessage  -From notify_ss@ajayian.com  -To notify_ss@ajayian.com -Subject "[Storage Spaces Monitoring] $env:computername" -Body "$storageSpacesStatusList" -Smtpserver mail.shuttlesite.com