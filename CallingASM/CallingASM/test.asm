	.model flat,c
	.code

;extern "C" void CalculateSums_(int a,int b,int c,int *s1,int *s2,int *s3);
;描述：这个函数演示了完整的汇编语言序语和结语
;返回值：None
;计算: *s1 = a+b+c
;      *s2 = a*a+b*b+c*c
;      *s3 = a*a*a+b*b*b+c*c*c

CalculateSums_ proc
;函数序言
	push ebp
	mov ebp,esp
	sub esp,12
	push ebx
	push esi
	push edi 

;加载参数值
	mov eax,[ebp+8]
	mov ebx,[ebp+12]
	mov ecx,[ebp+16]
	mov edx,[ebp+20]
	mov esi,[ebp+24]
	mov edi,[ebp+28]

;计算's1'
    mov [ebp-12],eax
	add [ebp-12],ebx
	add [ebp-12],ecx

;计算's2'
	imul eax,eax
	imul ebx,ebx
	imul ecx,ecx
	mov [ebp-8],eax
	add [ebp-8],ebx
	add [ebp-8],ecx

;计算's3'
	imul eax,[ebp+8]
	imul ebx,[ebp+12]
	imul ecx,[ebp+16]
	mov [ebp-4],eax
	add [ebp-4],ebx
	add [ebp-4],ecx

;保存's1,s2,s3'
	mov eax,[ebp-12]
	mov [edx],eax
	mov eax,[ebp-8]
	mov [esi],eax
	mov eax,[ebp-4]
	mov [edi],eax

;函数结语
	pop  edi
	pop  esi
	pop  ebx
	mov  esp,ebp
	pop  ebp
	ret
CalculateSums_ endp
	end
    