/*
Output "Hello world!" to standard output.
For Aarch64 (ARM64) architecture with GNU assembler, using Linux syscalls.

Assemble with :
as -o hello.o helloworls64.s &&
ld -o hello hello.o
*/

.global _start
.section .text

_start:
mov x0,#1
adrp x1,pesan
add x1,x1, :lo12:pesan
mov x2,pjgpsn
mov x8,#64
svc #00
keluar:
	mov x8, #93
	mov x0, #42
	svc #0
	ret

.section .data
pesan:
.ascii "helloworld\n"
pjgpsn=.-pesan
