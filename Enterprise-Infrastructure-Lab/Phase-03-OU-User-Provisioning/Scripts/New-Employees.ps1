
Import-Module ActiveDirectory

$Employees = Import-Csv "C:\DuceTech\Scripts\Employees.csv"

$BaseOU = "OU=Employees,OU=DuceTech,DC=ducetech,DC=test"

$Password = Read-Host "Enter temporary lab password" -AsSecureString

foreach ($Employee in $Employees) {

    $FirstName = $Employee.FirstName
    $LastName = $Employee.LastName
    $Department = $Employee.Department

    $FullName = "$FirstName $LastName"

    $Username = ("{0}.{1}" -f $FirstName.Substring(0,1), $LastName).ToLower()

    $UPN = "$Username@ducetech.test"

    $OU = "OU=$Department,$BaseOU"

    if (Get-ADUser -Filter {SamAccountName -eq $Username}) {
        Write-Host "SKIPPED: $Username already exists" -ForegroundColor Yellow
        continue
    }

    try {
        New-ADUser `
            -Name $FullName `
            -GivenName $FirstName `
            -Surname $LastName `
            -DisplayName $FullName `
            -SamAccountName $Username `
            -UserPrincipalName $UPN `
            -Department $Department `
            -Path $OU `
            -AccountPassword $Password `
            -Enabled $true `
            -ChangePasswordAtLogon $true `
            -ErrorAction Stop

        Write-Host "CREATED: $Username - $Department" -ForegroundColor Green
    }
    catch {
        Write-Host "FAILED: $Username - $_" -ForegroundColor Red
    }
}
