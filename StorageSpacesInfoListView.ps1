$storageSpacesStatus = Get-Disk | Where-Object BusType -Eq Spaces 

$storageSpacesStatus |

Format-List -Property FriendlyName, HealthStatus, Size, OperationalStatus