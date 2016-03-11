# Get the Win32_LogicalDisk objects and hold on to them for later use.

$drives = Get-WmiObject Win32_LogicalDisk -filter "DriveType=3" 

# Display some formatted output with Out-GridView

$drives |
Select DeviceID,@{Name="Size(GB)";Expression={"{0:N1}" -f($_.size/1gb)}},@{Name="FreeSpace(GB)";Expression={"{0:N1}" -f($_.freespace/1gb)}} |
Out-GridView

# Now you can continue to work with $drives, as needed.
