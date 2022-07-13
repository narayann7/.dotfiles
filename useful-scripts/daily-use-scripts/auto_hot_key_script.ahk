#NoEnv
SendMode Input
SetWorkingDir, %A_ScriptDir%

; how to run??
; download https://www.autohotkey.com/
; create a file with a extension of .ahk
; click the file to run

;if want to run while windows start up
; control + r = it will open run
;type shell:startup
;paste the file on that path , it will run every time the windows start up

; -----------------------HOT STRINGS--------------------------------
::lnrg::laxminarayanreddy432@gmail.com
return
::lnr::laxmi narayan reddy
return
::mszg::majorskillz432@gmail.com
return
::uryg::ureddy.cse.2019@nist.edu
return
::dkg::demon432king@gmail.com
return

; ^ --> cntrl
; # --> windows
; ! --> alt
; + --> shift

; for geting my email through hot key
^1::
    Send laxminarayanreddy432@gmail.com
return

; for opening windows terminal
#Enter::
    Run, wt
    WinActivate, skillz
return
; for opening sublime
#s::
    Run, C:\Program Files\Sublime Text\sublime_text.exe
return
; for opening Everything
#f::
    Run, C:\Program Files (x86)\Everything 1.5a\Everything.exe
return
#k::
    Run, C:\Program Files\WindowsApps\KDEe.V.KDEConnect_22.401.986.0_x64__7vt06qxq7ptv8\bin\kdeconnect-app.exe
return

#Space::
    Send, !{F4}
return