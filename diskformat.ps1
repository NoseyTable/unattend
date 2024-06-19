# Disk 1: Format to NTFS with 64K allocation unit size, label: Data
$disk1Number = 1
$disk1PartitionNumber = 1

$disk1 = Get-Disk -Number $disk1Number
$disk1Partition = Get-Partition -DiskNumber $disk1Number -PartitionNumber $disk1PartitionNumber

$disk1VolumeParams = @{
    DriveLetter = ($disk1Partition | Get-Volume).DriveLetter
    FileSystem = 'NTFS'
    AllocationUnitSize = 64KB
    NewFileSystemLabel = "Data"
    Confirm = $false
    Force = $true
}

# Disk 2: Format to NTFS with 64K allocation unit size, label: Logs
$disk2Number = 2
$disk2PartitionNumber = 1

$disk2 = Get-Disk -Number $disk2Number
$disk2Partition = Get-Partition -DiskNumber $disk2Number -PartitionNumber $disk2PartitionNumber

$disk2VolumeParams = @{
    DriveLetter = ($disk2Partition | Get-Volume).DriveLetter
    FileSystem = 'NTFS'
    AllocationUnitSize = 64KB
    NewFileSystemLabel = "Logs"
    Confirm = $false
    Force = $true
}

# Disk 3: Format to NTFS with 64K allocation unit size, label: Index
$disk3Number = 3
$disk3PartitionNumber = 1

$disk3 = Get-Disk -Number $disk3Number
$disk3Partition = Get-Partition -DiskNumber $disk3Number -PartitionNumber $disk3PartitionNumber

$disk3VolumeParams = @{
    DriveLetter = ($disk3Partition | Get-Volume).DriveLetter
    FileSystem = 'NTFS'
    AllocationUnitSize = 64KB
    NewFileSystemLabel = "Index"
    Confirm = $false
    Force = $true
}

# Disk 4: Format to NTFS with 64K allocation unit size, label: TempDB
$disk4Number = 4
$disk4PartitionNumber = 1

$disk4 = Get-Disk -Number $disk4Number
$disk4Partition = Get-Partition -DiskNumber $disk4Number -PartitionNumber $disk4PartitionNumber

$disk4VolumeParams = @{
    DriveLetter = ($disk4Partition | Get-Volume).DriveLetter
    FileSystem = 'NTFS'
    AllocationUnitSize = 64KB
    NewFileSystemLabel = "TempDB"
    Confirm = $false
    Force = $true
}
