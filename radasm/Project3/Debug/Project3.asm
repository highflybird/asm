.Const

.Data?

.Data

include ECProtos.inc ; .Code

Project3Procedure Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	.If uMsg == WM_CREATE
		;====================
		; Initialization code
		;====================
	.ElseIf uMsg == ECM_AFTERCREATE
		;===============================
		; Just after the window has been
		; created but before it is shown
		;===============================
	.ElseIf uMsg == WM_COMMAND
		Mov Edx, wParam
		Movzx Eax, Dx
		Shr Edx, 16
		Invoke OnProject3Command, hWnd, Eax, Edx, lParam
@@:		Ret
	.ElseIf uMsg == WM_NOTIFY
		Invoke OnProject3Notify, hWnd, lParam
		Jmp @B
	.ElseIf uMsg == WM_CLOSE
		Invoke IsModal, hWnd
		.If Eax
			Invoke EndModal, hWnd, IDCANCEL
			Mov Eax, TRUE	;Return TRUE
			Jmp @B
		.EndIf
	.ElseIf uMsg == WM_DESTROY
		;===========
		; Final code
		;===========
	.EndIf
	Xor Eax, Eax	;Return FALSE
	Jmp @B
Project3Procedure EndP

OnProject3Command Proc Private hWndParent:HWND, uCtlID:ULONG, uCode:ULONG, hWndChild:HWND
	;============================================================
	; Code for WM_COMMAND messages (child controls notifications)
	;============================================================
	Xor Eax, Eax	;Return FALSE
	Ret
OnProject3Command EndP

OnProject3Notify Proc Private hWndParent:HWND, lpNMHDR:LPLONG
	;===========================================================
	; Code for WM_NOTIFY messages (child controls notifications)
	;===========================================================
	Xor Eax, Eax	;Return FALSE
	Ret
OnProject3Notify EndP

Project3Edit1 Proc Private hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	;==================================
	;Write your code here or delete the
	;whole procedure if it's not needed
	;==================================
	Xor Eax, Eax	;Return FALSE
	Ret
Project3Edit1 EndP

Project3Button1 Proc Private hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	;==================================
	;Write your code here or delete the
	;whole procedure if it's not needed
	;==================================
	Xor Eax, Eax	;Return FALSE
	Ret
Project3Button1 EndP

Project3Check1 Proc Private hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	;==================================
	;Write your code here or delete the
	;whole procedure if it's not needed
	;==================================
	Xor Eax, Eax	;Return FALSE
	Ret
Project3Check1 EndP

Project3Radio1 Proc Private hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	;==================================
	;Write your code here or delete the
	;whole procedure if it's not needed
	;==================================
	Xor Eax, Eax	;Return FALSE
	Ret
Project3Radio1 EndP

Project3List1 Proc Private hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	;==================================
	;Write your code here or delete the
	;whole procedure if it's not needed
	;==================================
	Xor Eax, Eax	;Return FALSE
	Ret
Project3List1 EndP

Project3Picture1 Proc Private hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	;==================================
	;Write your code here or delete the
	;whole procedure if it's not needed
	;==================================
	Xor Eax, Eax	;Return FALSE
	Ret
Project3Picture1 EndP

Project3Combo1 Proc Private hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	;==================================
	;Write your code here or delete the
	;whole procedure if it's not needed
	;==================================
	Xor Eax, Eax	;Return FALSE
	Ret
Project3Combo1 EndP
