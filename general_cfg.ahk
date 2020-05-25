#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 从下面开始写自定义配置

;----------------------------------------------------------;
; Caps 键实现导航键
;----------------------------------------------------------;
SetCapsLockState, AlwaysOff			; 禁用 Capslock 键

Capslock & i::Up
Capslock & k::Down
Capslock & j::Left
Capslock & l::Right

Capslock & r::Delete
Capslock & e::Backspace

Capslock & p::Home
Capslock & `;::End



;----------------------------------------------------------;
; Caps 键实现数字按键中的英文字符输出
;----------------------------------------------------------;
Capslock & 1::	Send % "{ASC 0" . Asc("!") . "}"
Capslock & 2::	Send % "{ASC 0" . Asc("@") . "}"
Capslock & 3::	Send % "{ASC 0" . Asc("#") . "}"
Capslock & 4::	Send % "{ASC 0" . Asc("$") . "}"
Capslock & 5::	Send % "{ASC 0" . Asc("%") . "}"
Capslock & 6::	Send % "{ASC 0" . Asc("^") . "}"
Capslock & 7::	Send % "{ASC 0" . Asc("&") . "}"
Capslock & 8::	Send % "{ASC 0" . Asc("*") . "}"
Capslock & 9::	Send % "{ASC 0" . Asc("(") . "}"
Capslock & 0::	Send % "{ASC 0" . Asc(")") . "}"



;----------------------------------------------------------;
; 使普通Edit控件也支持 Ctrl+Backspace
;----------------------------------------------------------;
#If ActiveControlIsOfClass("Edit")
^BS::Send ^+{Left}{Del}
^Del::Send ^+{Right}{Del}

ActiveControlIsOfClass(Class) {
    ControlGetFocus, FocusedControl, A
    ControlGet, FocusedControlHwnd, Hwnd,, %FocusedControl%, A
    WinGetClass, FocusedControlClass, ahk_id %FocusedControlHwnd%
    return (FocusedControlClass=Class)
}

#If		; End of Class("Edit")



;----------------------------------------------------------;
; 通过右Alt+M来最小化窗口
;----------------------------------------------------------;
; 利用 spyxx.exe 或 spyxx_amd64.exe 来获得 ahk_class 名称
RAlt & M::
{
	; 特定窗口使用 WinClose 实现最小化
	If WinActive("ahk_class TFoxMainFrm.UnicodeClass") 
	or WinActive("ahk_class YodaoMainWndClass")
	or WinActive("ahk_class NeteaseYoudaoYNoteMainWnd")
	{
		WinClose, A	; "A" for current window.
		Return
	}
	; 一般窗口使用 WinMinimize 实现最小化
	WinMinimize, A
	Return
}



;----------------------------------------------------------;
; Caps 键实现媒体控制+音量、亮度控制
;----------------------------------------------------------;
; Capslock+方向键实现媒体控制
Capslock & Up::	    run C:\Software\网易云音乐PC版\cloudmusic.exe		    ; 打开音乐播放器
Capslock & Down::	Media_Play_Pause	; Play/Pause
Capslock & Left::	Media_Prev			; 上一首
Capslock & Right::	Media_Next			; 下一首

; Capslock+Shift+方向键实现音量、亮度控制
#if GetKeyState("Capslock", "P")
    LShift & Up::	    Volume_Up       ; 调高音量
    Shift & Down::	    Volume_Down	    ; 调低音量
    ; TODO
    ;Shift & Left::	    ??	            ; 降低亮度
    ;Shift & Right::	??              ; 提高亮度
#if



