Write-Host "Let's calculate your daily, weekly, monthly, and yearly wage."

$hourly_pay= Read-Host -Prompt "What is your hourly pay (no money symbols please)"
$hours= Read-Host -Prompt "How many hours do you work (per day, rounded)"
$days= Read-Host -Prompt "How many days a week do you work"

$daily=$hourly_pay*$hours 
# $weekly
# $monthly
# $yearly

Write-Host "Daily pay: " $daily
