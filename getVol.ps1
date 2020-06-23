Get-PSDrive | where-object {$_.free -gt 1} | forEach-object {$Count = 0; Write-Host "";}
{$_.Name + "used is"+ "{0:N2}" -f ($_.Used/1gb) + " Free: " + "{0:n2}" -f($_.Free/1gb) + "total: " + "{0:N2}" -f(($_.Used/1gb)+($_.Free/1gb)); 
$Count = $Count + $_.Free;}
{write-Host"";write-Host "total free space" ("{0:N2}" -f($Count/1gb)) -backgroundcolor magenta}
