$adapters = Get-netadapter | Select-Object -Property Name,InterfaceDescription,InterfaceAlias,MacAddress,LinkSpeed,MediaConnectionState

foreach ($adapter in $adapters)
{
    $Name = $adapter.Name
    
    Write-Host "Creating file for $Name."
    Start-Sleep 1
    
    New-Item -itemtype file -path "C:\Data\Adapter-$Name.txt" -Force | Out-Null
    Start-Sleep 1

    Add-Content -Path "C:\Data\Adapter-$Name.txt" -Value "$Name"
    Add-Content -Path "C:\Data\Adapter-$Name.txt" -Value " "

    $adapter | format-list * | Out-File "C:\Data\Adapter-$Name.txt" -Append
    Start-Sleep 1
    
    $IPinfo = Get-NetIPAddress -interfacealias $Name

    Add-Content -Path "C:\Data\Adapter-$Name.txt" -Value "IP information"
    Add-Content -Path "C:\Data\Adapter-$Name.txt" -Value " "

    $IPinfo | Out-File "C:\Data\Adapter-$Name.txt" -Append
    Start-Sleep 1

    Start-Process -FilePath notepad.exe -ArgumentList "C:\Data\Adapter-$Name.txt"

}