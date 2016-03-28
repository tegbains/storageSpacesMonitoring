# The monitoring variables

$mailServerName = "mail.shuttlesite.com"
$emailAddressNotifyDestination = "notify_ss@ajayian.com"
$emailAddressNotifySource = "notify_ss@ajayian.com"

$emailSubject = "[Storage Spaces Monitoring] $env:computername"

# grab the current Disk status and filter out all non-StorageSpaces disks
$storageSpacesStatus = Get-StoragePool  


$storageSpacesStatusList = $storageSpacesStatus |
Format-List -Property FriendlyName, HealthStatus, Size, OperationalStatus | Out-String


Send-MailMessage  -From $emailAddressNotifySource  -To $emailAddressNotifySource -Subject $emailSubject -Body "$storageSpacesStatusList" -Smtpserver $mailServerName