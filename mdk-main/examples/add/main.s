.section .text
    .global main
    .type main, @function

main:
    li a0, 3
    li a1, 4
    add a0, a0, a1
    j main