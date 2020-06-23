#This is a simple script to practice PowerShell
#It uses the controversial Write-Host to practice color manipulation

#First get drives and pipe driver objects, see if object member free is greater than 1
#If object free greater than 1, pipe and start processing
Get-PSDrive | where-object {$_.free -gt 1} | forEach-object {$Count = 0; Write-Host "";}

#Count is a variable set to 0 and $_ is a var for current object
#{0:N2} is a function from .Net framerwork
{$_.Name + "used is"+ "{0:N2}" -f ($_.Used/1gb) + " Free: " + "{0:n2}" -f($_.Free/1gb) + "total: " + "{0:N2}" -f(($_.Used/1gb)+($_.Free/1gb)); 
$Count = $Count + $_.Free;}{write-Host"";write-Host "total free space" ("{0:N2}" -f($Count/1gb)) -backgroundcolor magenta}
