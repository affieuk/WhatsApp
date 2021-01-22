function Remove-WhatsAppGroupMembers {
    Param(
        [stirng]$GroupName,
        [bool]$Headless = $true
    )

    If ($Headless) {
        $Driver = Start-SeChrome -StartURL 'https://web.whatsapp.com' -Headless
    }
    Else {
        $Driver = Start-SeChrome -StartURL 'https://web.whatsapp.com'
    }
    $Element = $Driver.FindElementByXPath("//span[@title='$GroupName']")
    $Element.Click()
    
    $Element = $Driver.FindElementByXPath("//header//span[contains(text(), ', You')]")
    $Users = $Element.Text.Replace(', You','').Split(', ')
    $Element.Click()
    
    $Element = $Driver.FindElementByXPath("//span[contains(text(), 'participant')]")
    $Element.Click()
    
    foreach ($User in $Users) {
        $Element = $Driver.FindElementByXPath("//span[@title='$User']")
        $Element.Click()
        $Element = $Driver.FindElementByXPath("//div[@title='Remove']")
        $Element.Click()
    }
}
