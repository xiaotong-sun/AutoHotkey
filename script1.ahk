#Requires AutoHotkey v2.0
Capslock::Esc
Esc::Capslock

; 清空回收站
#Del::FileRecycleEmpty ; win + del

; 最大化当前活动窗口
Capslock & K::WinMaximize "A" ;

; 最小化当前窗口
Capslock & J::WinMinimize "A" ;
