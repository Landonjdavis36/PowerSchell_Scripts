$policy = New-Object -TypeName Microsoft.Local.SecurityPolicy
$policy.SetMinimumPasswordLength(12)
$policy.SetPasswordComplexity(1)
