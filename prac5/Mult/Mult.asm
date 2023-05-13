// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@R0
M=0


@R1
D=M
@NEGATIVE_CHECK
D; JLT


@LOOP
0; JMP

(NEGATIVE_CHECK)

@R1
M=-M
@R2
M=-M

(LOOP)

@R1
D=M
@END_LOOP
D; JEQ


@R0
D=M
@R2
D=D+M
@R0
M=D


@R1
M=M-1


@LOOP
0; JMP

(END_LOOP)
