.386
.model flat,stdcall
option casemap:none
include windows.inc
include kernel32.inc
includelib kernel32.lib

.data
endL equ <0dh,0ah>
message db endL,endL,"控制台输出程序示例",endL 
		db "~~~~~~~~~~~~~~~~~~~",endL
messageSize = ($-message)
ConsoleHandle DWORD 0 
BytesWritten  DWORD ?

.code 
main proc
	invoke GetStdHandle,STD_OUTPUT_HANDLE
	mov ConsoleHandle,eax
	invoke WriteConsole,ConsoleHandle,offset message,messageSize,offset BytesWritten,0
	invoke ExitProcess,0
main endp
end main

