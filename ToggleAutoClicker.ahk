; Set the background color of your script
GuiColor := "EEFFFF" ; Replace with your desired background color in hexadecimal format

; Function to create a "transparent" MsgBox
TransparentMsgBox(Text) {
    Gui Color, %GuiColor%
    Gui Font, s10 ; Adjust font size as needed
    Gui Add, Text,, %Text%
    Gui Show, , MsgBox
    Sleep 2000 ; Adjust the duration the MsgBox is visible (in milliseconds)
    Gui Destroy
}

Toggle := false

+F1::
    Toggle := !Toggle
    if (Toggle) {
        ; Press and hold the left mouse button
       TransparentMsgBox("Activated")
        Send, {LButton down}
    } else {
        ; Release the left mouse button
        TransparentMsgBox("Deactivated")
        Send, {LButton up}
    }
return

toggle := false

F1::
    toggle := !toggle
    if (toggle) {
        SetTimer, ClickLoop, 1 ; Adjust the interval (in milliseconds) as needed
        TransparentMsgBox("Activated")
    } else {
        SetTimer, ClickLoop, Off
        TransparentMsgBox("Deactivated")
    }
return

ClickLoop:
    MouseClick
return
