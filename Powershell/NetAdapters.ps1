$adapters = Get-netadapter

foreach ($adapter in $adapters)
{
    $Name = $adapter.Name
    Write-Host "Creating file for $Name."
    Start-Sleep 1
    $adapter | format-list * | Out-File "C:\Data\Adapter-$Name.txt" -Force
    Start-Sleep 1
    Start-Process -FilePath notepad.exe -ArgumentList "C:\Data\Adapter-$Name.txt"
    Start-Sleep 1
}