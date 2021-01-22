# WhatsApp

Cmdlet to remove all WhatsApp group members\
Remove-WhatsAppGroupMembers

## Instructions
1. Run powershell
2. Install Selenium module
`Install-Module Selenium`
3. Install ChromeDriver or driver for your preferred web browser. I tested using Chrome, chromedriver [docs](https://chromedriver.chromium.org/getting-started) and [downloads](https://chromedriver.chromium.org/downloads)
4. Unblock the file\
`Unblock-File -Path ~\Downloads\Remove-WhatsAppGroupMembers.ps1`
5. dot source (load) the cmdlet, so if you've saved the cmdlet to your Downloads folder on Windows, run the following.\
`. ~\Downloads\Remove-WhatsAppGroupMembers.ps1`
6. Run the cmdlet with the name of the what's group, if there is a space in the group name or any special characters then enclose the group name in single / double quotes\
Example 1\
`Remove-WhatsAppGroupMembers -GroupName MyGroup`\
Example 2\
`Remove-WhatsAppGroupMembers -GroupName 'My Group With Spaces'`

### Notes
When you run the cmdlet a browser window will open up and you'll need to scan the WhatsApp QR code from your mobile, go into Settings / WhatsApp web and Scan QR code.
