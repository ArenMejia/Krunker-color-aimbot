﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance FORCE 
;$OBFUSCATOR: $END_AUTOEXECUTE:
;OPTIMIZATIONS START
#MaxHotkeysPerInterval 920000000
#HotkeyInterval 920000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
;OPTIMIZATIONS END

CoordMode, Mouse, Screen 
CoordMode, Pixel, Screen 
MidX := A_ScreenWidth / 2 
MidY := A_ScreenHeight / 2 
Triggerbot = 0 
Sense = 2
MX := A_ScreenWidth / 16
MY := A_ScreenHeight / 9
FirstPairX := (MidX - MX)
FirstPairY := (MidY - MX)
SecondPairX := (MidX + MY)
SecondPairY := (MidY + MY)
aimcolor = 0x5064FB

Msgbox, CREATED BY HACKERHANSEN 
Msgbox, Works best on 1080p 
Msgbox, If you need help be sure to read the readme on the github page. 
Msgbox, 
(
INSTRUCTIONS: 
Aim near a person, then hold right mouse button to aim in. 
Aimbot will activate if you are aiming close to the target. 
)
Msgbox, To disable the hack, press the `` button (next to the 1 key)

TrayTip, Krunker Aimbot, Aimbot has started!, 5, 33

~RButton::
{
	While GetKeyState("RButton"){
PixelSearch, TargetX, TargetY, FirstPairX, FirstPairY, SecondPairX, SecondPairY, %aimcolor%, 30, Fast
If ErrorLevel = 0 
{ 
TargetX := TargetX + 42
TargetY := TargetY + 30
MoveX := ((TargetX - MidX) / sense) 
MoveY := ((TargetY - MidY) / sense) 
MouseMove, MoveX, MoveY,, R 
if (TriggerBot = 1) 
Click 
}
}
}
return

`::
TrayTip, Krunker Aimbot, Aimbot deactivated!, 5, 33
exitapp

