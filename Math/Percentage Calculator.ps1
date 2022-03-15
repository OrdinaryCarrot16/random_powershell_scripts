[decimal]$in_value= Read-Host -Prompt "Enter the number you want to find the percentage of (use period for decimal)"
[decimal]$percent= Read-Host -Prompt "Enter the percentage you want to use (0-100, no symbols)"
[decimal]$out_value= ($in_value * $percent) / 100
[decimal]$percent_remaining=(100 - $percent)
Write-Host

Write-Host "Percentage: ($in_value * $percent) / 100 = $out_value"
[decimal]$out_value= ($in_value * $percent_remaining) / 100
Write-Host "Remaining Percentage (100 - $percent = $percent_remaining%): ($in_value * $percent_remaining) / 100 = $out_value"
Write-Host

pause
