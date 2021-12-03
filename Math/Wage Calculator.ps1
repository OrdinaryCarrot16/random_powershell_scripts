# Features to add:
# Tax amount owed based by state and conditions

Write-Host "Let's calculate your daily, weekly, monthly, and yearly wage."

[decimal]$hourly_pay= Read-Host -Prompt "What is your hourly pay (no cash symbols)"
[decimal]$hours= Read-Host -Prompt "How many hours do you work (per day, use decimal for minutes)"
[int] $days= Read-Host -Prompt "How many days a week do you work"
Write-Host

[decimal]$daily= $hourly_pay * $hours
[decimal]$weekly= [int]$days * [decimal]$daily
[int]$monthly= ($days * 4.3) * $daily
[int]$yearly= ($days * 52) * $daily


Write-Host "Daily pay: $" $daily
Write-Host "$hourly_pay * $hours = $daily"
Write-Host

Write-Host "Weekly pay: $" $weekly
Write-Host "$days * $daily = $weekly"
Write-Host

Write-Host "Monthly pay (slightly inaccurate): $" $monthly
Write-Host "($days * 4.3) * $daily = $monthly"
Write-Host

Write-Host "Yearly/Annual pay: $" $yearly 
Write-Host "($days * 52) * $daily = $yearly"
Write-Host

pause
