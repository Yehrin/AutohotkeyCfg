#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 从下面开始写自定义配置

;----------------------------------------------------------;
; 主要针对阿米洛miya pro 68键键盘进行配置
;----------------------------------------------------------;
; 按键重映射
PgUp::Home
PgDn::End

; Caps + Esc 打印 `
Capslock & Esc::Send {Asc 096}

; Insert 转 `~键
Insert::Send {``}


