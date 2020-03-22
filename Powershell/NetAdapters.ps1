$adapters = Get-netadapter

foreach ($adapter in $adapters)
{
    $Name = $adapter.Name
    
    Write-Host "Creating file for $Name."
    Start-Sleep 1
    
    New-Item -itemtype file -path "C:\Data\Adapter-$Name.txt" -Force
    Start-Sleep 1

    $adapter | format-list * | Add-Content "C:\Data\Adapter-$Name.txt" -Append
    Start-Sleep 1
    
    $IPinfo = " "
    $IPinfo = Get-NetIPAddress -interfacealias $Name

    Add-Content -Path "C:\Data\Adapter-$Name.txt" -Value " "
    Add-Content -Path "C:\Data\Adapter-$Name.txt" -Value "IP information"
    Add-Content -Path "C:\Data\Adapter-$Name.txt" -Value " "

    $IPinfo | Out-File -FilePath "C:\Data\Adapter-$Name.txt" -Append
    Start-Sleep 1
    
    Start-Process -FilePath notepad.exe -ArgumentList "C:\Data\Adapter-$Name.txt"

}