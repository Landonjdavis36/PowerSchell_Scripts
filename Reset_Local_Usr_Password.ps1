$username = Read-Host "Enter the username to reset"
$password = Read-Host "Enter the new password" -AsSecureString
$user = [ADSI]"WinNT://$env:COMPUTERNAME/$username,user"
$user.SetPassword([Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($password)))
