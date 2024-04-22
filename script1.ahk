#Requires AutoHotkey v2.0

; #=Win    !=Alt    ^=Ctrl    +=Shift

CapsLock::Esc

; 废除CapsLock直接切换大小写锁定的功能
SetCapsLockState "AlwaysOff"

; 使用CapsLock+esc切换大写锁定
CapsLock & Esc::{
    If GetKeyState("CapsLock", "T") = 1
        SetCapsLockState "AlwaysOff"
    Else 
        SetCapsLockState "AlwaysOn"
}


; 清空回收站
#Del::FileRecycleEmpty ; win + del

; 最大化当前活动窗口
CapsLock & K::
{
	activeTitle := WinGetTitle("A")
	if (activeTitle != "")
		WinMaximize "A"
}

; 最小化当前窗口
CapsLock & J::
{
	activeTitle := WinGetTitle("A")
	if (activeTitle != "")
		WinMinimize "A"
}


; 使用CapsLock + T 打开终端
CapsLock & T::Run 'wt -d "C:\Users\84097\Desktop"'

; 关闭当前窗口
CapsLock & Q::
{
	activeTitle := WinGetTitle("A")
	if (activeTitle != "")
		WinClose "A"
}

; CapsLock+c 代替 CTRL+c
CapsLock & C::^C
CapsLock & V::^V