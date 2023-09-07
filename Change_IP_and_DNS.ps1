$interfaceIndex = Read-Host "Enter the network interface index (from Get-NetIPAddress)"
$ipAddress = Read-Host "Enter the new IP address"
$prefixLength = Read-Host "Enter the subnet prefix length (e.g., 24 for 255.255.255.0)"
$gateway = Read-Host "Enter the default gateway"
$dns1 = Read-Host "Enter the primary DNS"
$dns2 = Read-Host "Enter the secondary DNS"

New-NetIPAddress -InterfaceIndex $interfaceIndex -IPAddress $ipAddress -PrefixLength $prefixLength -DefaultGateway $gateway
Set-DnsClientServerAddress -InterfaceIndex $interfaceIndex -ServerAddresses $dns1,$dns2
