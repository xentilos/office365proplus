$monthly = "http://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60"
$semiannualtarget = "http://officecdn.microsoft.com/pr/b8f9b850-328d-4355-9145-c59439a0c4cf"
$semiannual ="http://officecdn.microsoft.com/pr/7ffbc6bf-bc32-4f92-8982-f9dd17fd3114"

$officeChannel = (Get-ItemProperty "HKLM:SOFTWARE\Microsoft\Office\ClickToRun\Configuration" -Name "CDNBaseUrl").CDNBaseUrl
if ($officeChannel -eq $monthly)
{
    write-host "Current Channel"
    cmd /c "setup.exe /configure monthly.xml"
}
if ($officeChannel -eq $semiannualtarget)
{
    write-host "Semi-Annual Channel"
    cmd /c "setup.exe /configure semiannualtarget.xml"
}
if ($officeChannel -eq $semiannual)
{
    write-host "Semi-Annual Channel (Targeted)"
    cmd /c "setup.exe /configure semiannual.xml"
}