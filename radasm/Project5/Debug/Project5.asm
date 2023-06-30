.Const

.Data?

.Data

include ECProtos.inc ; .Code

Project5Procedure Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
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
		Invoke OnProject5Command, hWnd, Eax, Edx, lParam
@@:		Ret
	.ElseIf uMsg == WM_NOTIFY
		Invoke OnProject5Notify, hWnd, lParam
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
Project5Procedure EndP

OnProject5Command Proc Private hWndParent:HWND, uCtlID:ULONG, uCode:ULONG, hWndChild:HWND
	;============================================================
	; Code for WM_COMMAND messages (child controls notifications)
	;============================================================
	Xor Eax, Eax	;Return FALSE
	Ret
OnProject5Command EndP

OnProject5Notify Proc Private hWndParent:HWND, lpNMHDR:LPLONG
	;===========================================================
	; Code for WM_NOTIFY messages (child controls notifications)
	;===========================================================
	Xor Eax, Eax	;Return FALSE
	Ret
OnProject5Notify EndP

Project5Button1 Proc Private hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	;==================================
	;Write your code here or delete the
	;whole procedure if it's not needed
	;==================================
	Xor Eax, Eax	;Return FALSE
	Ret
Project5Button1 EndP
