#Requires AutoHotkey v2.0

; #=Win    !=Alt    ^=Ctrl    +=Shift

; 按键替换
CapsLock::Esc
<!k::Up
<!j::Down
<!h::Left
<!l::Right
<!u::!Up
<!a::^a
<!c::^c
<!v::^v
<!z::^z
<!x::^x
<!s::^s
<!/::^/
<!w::^w
^!a::^!a
!+w::!+w
!+l::!+l
!+j::!+j
!+k::!+k
!+h::!+h

RAlt::Ctrl
CapsLock & h::Home
CapsLock & l::End

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
CapsLock & k::
{
	activeTitle := WinGetTitle("A")
	if (activeTitle != "")
		WinMaximize "A"
}

; 最小化当前窗口
CapsLock & j::
{
	activeTitle := WinGetTitle("A")
	if (activeTitle != "")
		WinMinimize "A"
}

; 还原窗口大小
CapsLock & n::
{
	activeTitle := WinGetTitle("A")
	if (activeTitle != "")
		WinRestore "A"
}

; 当前窗口打开终端
#HotIf GetKeyState("Shift")
CapsLock & t::
{
	Path := WinGetTitle("A")
	if (Path != "")
		Run "wt -d " Path
}
#HotIf

; 使用CapsLock + t 打开终端
CapsLock & t::Run 'wt -d ' A_Desktop

; 使用CapsLock + v 在当前文件夹下打开vscode
CapsLock & v::
{
	activeTitle := WinGetTitle("A")
	if (activeTitle != "")
		Run "D:\Software\Microsoft VS Code\Code.exe " activeTitle
}

; 关闭当前窗口
CapsLock & q::
{
	activeTitle := WinGetTitle("A")
	if (activeTitle != "")
		WinClose "A"
}

; 小米笔记本重新利用小爱按钮
$sc172::Send DllCall("user32.dll\LockWorkStation")