## switch_windows.ahk

实现快捷切换不同软件：

```
CapsLock+W：打开微信
CapsLock+Y：打开有道云笔记
...
```



## hotkey_script.ahk

实现如下功能：

- Caps 键+ JKL; 实现导航键
- Caps 键实现数字按键中的英文字符输出
- 使普通Edit控件也支持 Ctrl+Backspace
- 右Alt+M实现窗口最小化
- Caps 键实现媒体控制+音量、亮度控制（亮度控制还未实现）



## varmilo_miya_pro.ahk

配置阿米洛miya pro 68键盘的相关配置。



## 设置脚本自启动

首先打开启动目录：
- 方法1：在资源管理器里输入：
```
%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
```
- 方法2：Win+R打开【运行】，输入：
```
shell:startup
```

然后按住 Alt 键，将需要自启动的脚本拖到启动目录中即可。

