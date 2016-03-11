$storageSpacesStatus = Get-Disk | Where-Object BusType -Eq Spaces 

$storageSpacesStatus |
    Select FriendlyName, HealthStatus, @{Name="Size (GB)";Expression={"{0:N1}" -f($_.size/1gb)}} |
    Out-GridView