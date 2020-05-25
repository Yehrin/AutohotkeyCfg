#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 从下面开始写自定义配置

;----------------------------------------------------------;
; 定义函数
;----------------------------------------------------------;
SetTitleMatchMode 2    
SetCapsLockState, AlwaysOff			; 禁用 Capslock 键
Activate(t)
{
  IfWinActive,%t%
  {
    WinMinimize
    return
  }
  SetTitleMatchMode 2    
  DetectHiddenWindows,on
  IfWinExist,%t%
  {
    WinShow
    WinActivate
    return 1
  }
  return 0
}

ActivateAndOpen(t, p)
{
  if Activate(t)==0
  {
    Run %p%
    WinActivate
    return
  }
}

;----------------------------------------------------------;
; 设置快捷切换程序
;----------------------------------------------------------;
; 打开微信
Capslock & W::ActivateAndOpen("微信", "C:\Software\Tencent\WeChat\WeChat.exe")

; 打开有道云笔记
Capslock & Y::ActivateAndOpen("有道", "C:\Software\Youdao\YoudaoNote\YoudaoNote.exe")





