# Get IP addresses for each adapter

get-netipaddress | Select-Object interfacealias,ipaddress,addressfamily,description  | Sort-Object interfacealias | format-table -auto | out-file C:\Data\Adapters-and-IPAddresses.txt