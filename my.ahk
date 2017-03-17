; ctrl通用操作，APP内操作，系统自带
; ctrl+alt APP全局操作，自定义
; win 快捷启动，系统操作
; win+alt 快捷链接
; ctrl+win 系统快捷+自定义
; ctrl+shift APP自带等
; win+shift
; alt+shift
; ******************************************************
; # Win (Windows logo key) 
; ! Alt 
; ^ Control 
; + Shift 
; &  An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.  
; ******************************************************

;; 
;; Control::Capslock ; 把Control替换为Capslock 
Capslock::Control ; 把Capslock替换为Control 

; ******************************************************
; win 快捷启动，系统操作
;
; ******************************************************
#n::Run, Notepad++.exe
#g::Run, chrome.exe
#c::Run, calc
#p::Run, C:\Users\80093998\Desktop\putty.exe
#t::Run, C:\Program Files (x86)\cmder_mini\Cmder.exe
#o::Run, C:\Program Files (x86)\Microsoft Office\root\Office16\ONENOTE.EXE
#s::Run, C:\Program Files (x86)\Source Insight 3\Insight3.exe
#v::Run, C:\Program Files\Everything\Everything.exe
^!e::Run, D:\emacs\bin\runemacs.exe

; ******************************************************
; ctrl + win 全局扩展快捷操作
;
; ******************************************************
^#.::WinMinimize A
^#t::WinSet,AlwaysOnTop,, A
^#w::WinClose A

; ******************************************************
; ctrl通用操作
;
; ******************************************************
^q::WinClose A

; ******************************************************
; win+alt 快捷链接
;
; ******************************************************
#!b::Run, \\172.17.121.238\data\bsp_haitao.zhou\haitao\bsp
#!g::Run, http://gerrit.scm.adc.com:8080/#/
#!s::Run, http://opengrok.scm.adc.com:8080/source/
#!t::Run, https://rtc1:9444/jts/dashboards/5761
#!m::Run, http://mo.adc.com/
#!p::Run, D:\项目
#!h::Run, \\172.17.121.238\data\bsp_haitao.zhou
#!c::Run, \\172.17.121.34\sw_dev_version\PSW
#!w::Run, U:\

; ******************************************************
; ctrl+alt通用操作
;
; ******************************************************
^!Left::
	MouseMove, -1920, 0,, R
	MouseMove, 960, 0,, R
	MouseMove, 0, -1920,, R
^!Right::
	MouseMove, -1920, 0,, R
	MouseMove, 960, 0,, R
	MouseMove, 0, -1920,, R
^!Down::
	MouseMove, -1920, 0,, R
	MouseMove, 960, 0,, R
	MouseMove, 0, -1920,, R
^!Up::
	MouseMove, -1920, 0,, R
	MouseMove, 960, 0,, R
	MouseMove, 0, -1920,, R

; ******************************************************
; notepad++ open file when click f8
;
; ******************************************************
#IfWinActive ahk_class CabinetWClass
^!s:: ;ctrl+alt+s to user sourceinsight open file
	clipboard =
	sleep 100
	send ^c
	sleep 100
	var_file := clipboard
	if var_file <>
	{
		;run C:\Program Files (x86)\Source Insight 3\Insight3.exe "%var_file%"
	}
	else
	{
		;run C:\Program Files (x86)\Source Insight 3\Insight3.exe
	}
	return
^!n:: ;ctrl+alt+n to user notepad++ open file
	clipboard =
	sleep 100
	send ^c
	sleep 100
	var_file := clipboard
	if var_file <>
	{
		run Notepad++.exe "%var_file%"
	}
	else
	{
		run Notepad++.exe
	}
	return
^!v:: ;ctrl+alt+v to user gvim open file
	clipboard =
	sleep 100
	send ^c
	sleep 100
	var_file := clipboard
	if var_file <>
	{
		run C:\Program Files (x86)\Vim\vim74\gvim.exe "%var_file%"
	}
	else
	{
		run C:\Program Files (x86)\Vim\vim74\gvim.exe
	}
	return
^!e:: ;ctrl+alt+e to user emacs open file
	clipboard =
	sleep 100
	send ^c
	sleep 100
	var_file := clipboard
	if var_file <>
	{
		run D:\emacs\bin\runemacs.exe "%var_file%"
	}
	else
	{
		run D:\emacs\bin\runemacs.exe
	}
	return

#IfWinActive ahk_class Progman
^!n::
	clipboard =
	sleep 100
	send ^c
	sleep 100
	var_file := clipboard
	if var_file <>
	{
		run Notepad++.exe "%var_file%"
	}
	else
	{
		run Notepad++.exe
	}
	return
^!s::
	clipboard =
	sleep 100
	send ^c
	sleep 100
	var_file := clipboard
	if var_file <>
	{
		run C:\Program Files (x86)\Source Insight 3\Insight3.exe "%var_file%"
	}
	else
	{
		run C:\Program Files (x86)\Source Insight 3\Insight3.exe
	}
	return
^!v:: ;ctrl+alt+v to user gvim open file
	clipboard =
	sleep 100
	send ^c
	sleep 100
	var_file := clipboard
	if var_file <>
	{
		run C:\Program Files (x86)\Vim\vim74\gvim.exe "%var_file%"
	}
	else
	{
		run C:\Program Files (x86)\Vim\vim74\gvim.exe
	}
	return
^!e:: ;ctrl+alt+e to user emacs open file
	clipboard =
	sleep 100
	send ^c
	sleep 100
	var_file := clipboard
	if var_file <>
	{
		run D:\emacs\bin\runemacs.exe "%var_file%"
	}
	else
	{
		run D:\emacs\bin\runemacs.exe
	}
	return

; ******************************************************
; open source foder in notepad++ when click f8
;
; ******************************************************
#IfWinActive ahk_class Notepad++
f8::
	WinGetActiveTitle var_title
	SplitPath, var_title,, var_path
	run %var_path%
	return

#IfWinActive
