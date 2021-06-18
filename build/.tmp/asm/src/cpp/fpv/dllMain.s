	.file	"dllMain.cc"
	.text
/APP
	.globl DllMainCRTStartup 
DllMainCRTStartup:	  
movq $1, %rax	  
ret		  

	.ident	"GCC: (Rev11, Built by MSYS2 project) 10.2.0"
