#Requires AutoHotkey v2.0
#SingleInstance Force

; Each "layer" below is active only while its trigger key is physically
; held, via #HotIf on GetKeyState(key, "P") - checked live on every
; keystroke rather than tracked in a variable.

; Make CapsLock work as a modifier key (swallow its normal toggle action)
*CapsLock::return
*CapsLock Up::return

; Make Tab work as a modifier key for symbols
*Tab:: {
    if GetKeyState("Alt", "P") {  ; If Alt is held down
        if GetKeyState("Shift", "P") {  ; Check if Shift is also held
            Send "{Alt Down}{Shift Down}{Tab}"  ; Pass through Alt+Shift+Tab
        } else {
            Send "{Alt Down}{Tab}"  ; Pass through Alt+Tab
        }
    }
}

*Tab Up:: {
    if GetKeyState("Alt", "P") {   ; If Alt is still held down
        return                     ; Don't interfere with Alt+Tab
    }
    if (A_PriorKey = "Tab")
        Send "{Tab}"
}

; Make semicolon work as a modifier for Arrow/Select Mode
*;::return

*; Up:: {
    if (A_PriorKey = ";") {
        if GetKeyState("Shift", "P")
            Send ":"
        else
            Send ";"
    }
}

; Double-Shift for Caps Lock
LShift & RShift::SetCapsLockState !GetKeyState("CapsLock", "T")
RShift & LShift::SetCapsLockState !GetKeyState("CapsLock", "T")

; Basic numpad layout (Dvorak)
#HotIf GetKeyState("CapsLock", "P")
m::Send "1"
w::Send "2"
v::Send "3"
h::Send "4"
t::Send "5"
n::Send "6"
g::Send "7"
c::Send "8"
r::Send "9"
Space::Send "0"

; Additional Numpad Mode symbols
a::Send ":"
z::Send "\"
s::Send "["
-::Send "]"
l::Send "/"
/::Send "="

; Basic deletion functions
f::Backspace
d::^Backspace      ; Delete word
b::Send "+{Home}{Backspace}"  ; Delete to start of line
#HotIf

; Symbols mode (when Tab is held)
#HotIf GetKeyState("Tab", "P") && !GetKeyState("Alt", "P")
m::Send "{!}"      ; Shift + 1
w::Send "@"        ; Shift + 2
v::Send "{#}"      ; Shift + 3
h::Send "$"        ; Shift + 4
t::Send "%"        ; Shift + 5
n::Send "{^}"      ; Shift + 6
g::Send "&"        ; Shift + 7
c::Send "*"        ; Shift + 8
r::Send "("        ; Shift + 9
Space::Send ")"    ; Shift + 0

; Additional Symbols Mode symbols
'::Send ":"
z::Send "|"
s::Send "{{}"
-::Send "{}}"
l::Send "?"
/::Send "{+}"

; Delete forward functions in symbols mode
f::Delete
d::^Delete
b::Send "+{End}{Delete}"
#HotIf

; Arrow Mode (when semicolon is held)
#HotIf GetKeyState(";", "P") && !GetKeyState("Shift", "P")
; First level - character movement
g::Left
c::Up
r::Down
l::Right

; Second level - word and paragraph movement
h::^Left     ; Word left
t::^Up       ; Paragraph up
n::^Down     ; Paragraph down
s::^Right    ; Word right

; Third level - line and document movement
m::Home      ; Start of line
w::^Home     ; Top of document
v::^End      ; Bottom of document
z::End       ; End of line

; Deletion functions
Space::Backspace
f::Delete
d::^Backspace
b::Send "+{Home}{Backspace}"
#HotIf

; Select Mode (when Shift+semicolon is held)
#HotIf GetKeyState(";", "P") && GetKeyState("Shift", "P")
; First level - character movement with selection
g::+Left
c::+Up
r::+Down
l::+Right

; Second level - word and paragraph movement with selection
h::+^Left    ; Select word left
t::+^Up      ; Select paragraph up
n::+^Down    ; Select paragraph down
s::+^Right   ; Select word right

; Third level - line and document movement with selection
m::+Home     ; Select to start of line
w::+^Home    ; Select to top of document
v::+^End     ; Select to bottom of document
z::+End      ; Select to end of line

; Deletion functions
Space::Backspace
f::Delete
d::^Backspace
b::Send "+{Home}{Backspace}"
#HotIf