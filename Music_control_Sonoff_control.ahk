#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;next song
<^>!3::Send {Media_Next}
return


;previous song
<^>!1::Send {Media_Prev}
return


;play/pause
<^>!2::Send {Media_Play_Pause}
return



;Bett Licht an, Rest API
^F2::
	;SoundBeep 500, 200
	session := comobjcreate("WinHTTP.WinHttpRequest.5.1")
	session.open("POST", "http://192.168.0.10:8080/rest/items/Bett_Lampe", 0)
	session.send("TOGGLE")
	SplashTextOn, 250, 25, Erfolg!, Die Bett Lampe wurde umgeschaltet!
	WinMove, Erfolg!, ,0,0
	Sleep, 500
	SplashTextOff
Return

;Steroanlage an
^F1::
	;SoundBeep 500, 200
	session := comobjcreate("WinHTTP.WinHttpRequest.5.1")
	session.open("POST", "http://192.168.0.10:8080/rest/items/Stereoanlage", 0)
	session.send("TOGGLE")
	SplashTextOn, 250, 25, Erfolg!, Die Stereoanlage wurde umgeschaltet!
	WinMove, Erfolg!, ,0,0
	Sleep, 500
	SplashTextOff
Return


;Bett Wand Licht an, Rest API
^F3::
	;SoundBeep 500, 200
	session := comobjcreate("WinHTTP.WinHttpRequest.5.1")
	session.open("POST", "http://192.168.0.10:8080/rest/items/Bett_Spot", 0)
	session.send("TOGGLE")
	SplashTextOn, 250, 25, Erfolg!, Die Bett Lampe wurde umgeschaltet!
	WinMove, Erfolg!, ,0,0
	Sleep, 500
	SplashTextOff
Return

;Schlafzimmer Lcihter an, Rest API
^F4::
	;SoundBeep 500, 200
	session := comobjcreate("WinHTTP.WinHttpRequest.5.1")
	session.open("POST", "http://192.168.0.10:8080/rest/items/Schlafzimmer_Lichter", 0)
	session.send("TOGGLE")
	SplashTextOn, 250, 25, Erfolg!, Die Bett Lampe wurde umgeschaltet!
	WinMove, Erfolg!, ,0,0
	Sleep, 500
	SplashTextOff
Return

;Wohnzimmerlampe an
^F5::
	;SoundBeep 500, 200
	session := comobjcreate("WinHTTP.WinHttpRequest.5.1")
	session.open("POST", "http://192.168.0.10:8080/rest/items/Fernseher_Lampe", 0)
	session.send("TOGGLE")
	SplashTextOn, 300, 25, Erfolg!, Die Wohnzimmerlampe wurde umgeschaltet!
	WinMove, Erfolg!, ,0,0
	Sleep, 500
	SplashTextOff
Return



;Alle Lichter an, Rest API
^F10::
	;SoundBeep 500, 200
	session := comobjcreate("WinHTTP.WinHttpRequest.5.1")
	session.open("POST", "http://192.168.0.10:8080/rest/items/Lichter", 0)
	session.send("TOGGLE")
	SplashTextOn, 250, 25, Erfolg!, Alle Lichter wurden umgeschaltet!
	WinMove, Erfolg!, ,0,0
	Sleep, 500
	SplashTextOff
Return

;Suche Google nach Zwischenablage
^+c::
{
 Send, ^c
 Sleep 50
 Run, http://www.google.com/search?q=%clipboard%
 Return
}
