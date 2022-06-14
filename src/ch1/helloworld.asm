// Assembler program in x64 asm to print "Hello World!"
// to stdout.
//

.global _start  // Starting address for the program entry point
.align 2        // Apparently the hardware wants all instructions to be 2 byte aligned

_start: mov     X0,  #1                 // Load the immediate number "1" (stdout) into register X0
        adr     X1, helloworld          // Load the address of the string helloworld into register X1
        mov     X2,  #13                // Load the immediate number "13" (the length of our string) into register X2
        mov     X16, #4                 // Load the immediate number "4" (Unix write system call) into register X16
        svc     #0x80                   // Call kernel to output string

// Set up all parameters to exit the program.
// Then call the kernel to do it
        mov     X0,  #0                 // Load the immediate number "0" into register X0 | Use 0 as the return code.
        mov     X16, #1                 // System call "1" terminates the program
        svc     #0x80                   // Call kernel to terminate program

helloworld:  .ascii "Hello World!\n"
