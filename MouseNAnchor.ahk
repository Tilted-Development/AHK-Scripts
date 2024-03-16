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

Toggle := true

F12::
    Toggle := !Toggle
    if (Toggle) {
        MouseGetPos, MouseX, MouseY
        TransparentMsgBox("Anchor set.")
    } else {
        MouseMove, %MouseX%, %MouseY%
        TransparentMsgBox("Mouse moved back to anchor position.")
    }
return
