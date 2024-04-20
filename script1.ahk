#Requires AutoHotkey v2.0

Capslock::Esc

; 废除capslock直接切换大小写锁定的功能
SetCapsLockState "AlwaysOff"

; 使用capslock+esc切换大写锁定
Capslock & Esc::{
    If GetKeyState("CapsLock", "T") = 1
        SetCapsLockState "AlwaysOff"
    Else 
        SetCapsLockState "AlwaysOn"
}


; 清空回收站
#Del::FileRecycleEmpty ; win + del

; 最大化当前活动窗口
Capslock & K::WinMaximize "A" ;

; 最小化当前窗口
Capslock & J::WinMinimize "A" ;

; 使用capslock + T 打开终端
CapsLock & T::Run 'wt -d "C:\Users\84097\Desktop"'

; 关闭当前窗口
Capslock & Q::WinClose "A"
