call main
halt
introducao:
  push r0
  mov r0, sp
  loadn r7, #2
  sub r7, r0, r7
  mov sp, r7
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #str0
  call prints
  mov r2, r7
  loadn r1, #str1
  call prints
  mov r2, r7
  loadn r1, #str2
  call prints
  mov r2, r7
  loadn r1, #str3
  call prints
  mov r2, r7
  loadn r1, #str4
  call prints
  mov r2, r7
  loadn r1, #str5
  call prints
  mov r2, r7
  loadn r1, #str6
  call prints
  mov r2, r7
  loadn r1, #str7
  call prints
  mov r2, r7
  loadn r1, #str8
  call prints
  mov r2, r7
  loadn r1, #str9
  call prints
  mov r2, r7
  loadn r1, #str10
  call prints
  mov r2, r7
  loadn r1, #str11
  call prints
  mov r2, r7
  loadn r1, #str12
  call prints
  mov r2, r7
  loadn r1, #str13
  call prints
  mov r2, r7
  loadn r1, #str14
  call prints
  mov r2, r7
  call getc
  mov r1, r7
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #1
  mov r7, r1
  jmp Lend0
Lend0:
  mov sp, r0
  pop r0
  rts
historia:
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #str15
  call prints
  mov r2, r7
  loadn r1, #str16
  call prints
  mov r2, r7
  loadn r1, #str17
  call prints
  mov r2, r7
  loadn r1, #str18
  call prints
  mov r2, r7
  loadn r1, #str19
  call prints
  mov r2, r7
  loadn r1, #str20
  call prints
  mov r2, r7
  loadn r1, #str21
  call prints
  mov r2, r7
  loadn r1, #str22
  call prints
  mov r2, r7
  loadn r1, #str23
  call prints
  mov r2, r7
  loadn r1, #str24
  call prints
  mov r2, r7
  loadn r1, #str25
  call prints
  mov r2, r7
  loadn r1, #str26
  call prints
  mov r2, r7
  loadn r1, #str27
  call prints
  mov r2, r7
  loadn r1, #str28
  call prints
  mov r2, r7
  call getc
  mov r1, r7
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #1
  mov r7, r1
  jmp Lend1
Lend1:
  rts
inicializartabuleiro:
  push r0
  mov r0, sp
  loadn r7, #4
  sub r7, r0, r7
  mov sp, r7
  loadn r7, #1
  sub r7, r0, r7
  storei r7, r1
  loadn r7, #2
  sub r7, r0, r7
  storei r7, r2
  loadn r7, #3
  sub r7, r0, r7
  storei r7, r3
  loadn r1, #0
  loadn r2, #2
  sub r2, r0, r2
  storei r2, r1
L1:
  loadn r1, #2
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #7
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L2
  loadn r1, #0
  loadn r2, #3
  sub r2, r0, r2
  storei r2, r1
L4:
  loadn r1, #3
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #7
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L5
  loadn r1, #0
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #2
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  inc r2
  storei r2, r1
  loadn r1, #0
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #2
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #0
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #2
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #2
  add r2, r2, r3
  storei r2, r1
  loadn r1, #3
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L4
L5:
L6:
  loadn r1, #2
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L1
L2:
L3:
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #0
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #2
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #0
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #6
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #1
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #4
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #2
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #3
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #2
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #4
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #3
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #5
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #1
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #6
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #0
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #6
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #5
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
Lend2:
  mov sp, r0
  pop r0
  rts
coordenadaehvalida:
  push r0
  mov r0, sp
  loadn r7, #4
  sub r7, r0, r7
  mov sp, r7
  loadn r7, #1
  sub r7, r0, r7
  storei r7, r1
  loadn r7, #2
  sub r7, r0, r7
  storei r7, r2
  loadn r7, #3
  sub r7, r0, r7
  storei r7, r3
  loadn r1, #0
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #6
  and r1, r1, r7
  jz L7
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #7
  cmp r2, r3
  push fr
  pop r2
  loadn r7, #2
  and r2, r2, r7
  jz L8
  loadn r3, #0
  loadn r4, #3
  sub r4, r0, r4
  loadi r4, r4
  cmp r3, r4
  push fr
  pop r3
  loadn r7, #6
  and r3, r3, r7
  jz L9
  loadn r4, #3
  sub r4, r0, r4
  loadi r4, r4
  loadn r5, #7
  cmp r4, r5
  push fr
  pop r4
  loadn r7, #2
  and r4, r4, r7
  mov r3, r4
  jz L9
  loadn r3, #1
L9:
  mov r2, r3
  jz L8
  loadn r2, #1
L8:
  mov r1, r2
  jz L7
  loadn r1, #1
L7:
  mov r7, r1
  jmp Lend3
Lend3:
  mov sp, r0
  pop r0
  rts
qtderrosvizinhos:
  push r0
  mov r0, sp
  loadn r7, #5
  sub r7, r0, r7
  mov sp, r7
  loadn r7, #1
  sub r7, r0, r7
  storei r7, r1
  loadn r7, #2
  sub r7, r0, r7
  storei r7, r2
  loadn r7, #3
  sub r7, r0, r7
  storei r7, r3
  loadn r1, #0
  loadn r2, #4
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  sub r2, r2, r3
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  call coordenadaehvalida
  mov r4, r7
  jz L11
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  sub r2, r2, r3
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #1
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  mov r4, r1
  jz L11
  loadn r4, #1
L11:
  jz L10
  loadn r1, #4
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #1
  add r1, r1, r2
  loadn r2, #4
  sub r2, r0, r2
  storei r2, r1
L10:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  add r2, r2, r3
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  call coordenadaehvalida
  mov r4, r7
  jz L13
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  add r2, r2, r3
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #1
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  mov r4, r1
  jz L13
  loadn r4, #1
L13:
  jz L12
  loadn r1, #4
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #1
  add r1, r1, r2
  loadn r2, #4
  sub r2, r0, r2
  storei r2, r1
L12:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #1
  add r3, r3, r4
  call coordenadaehvalida
  mov r4, r7
  jz L15
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  add r2, r2, r3
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #1
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  mov r4, r1
  jz L15
  loadn r4, #1
L15:
  jz L14
  loadn r1, #4
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #1
  add r1, r1, r2
  loadn r2, #4
  sub r2, r0, r2
  storei r2, r1
L14:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #1
  sub r3, r3, r4
  call coordenadaehvalida
  mov r4, r7
  jz L17
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  sub r2, r2, r3
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #1
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  mov r4, r1
  jz L17
  loadn r4, #1
L17:
  jz L16
  loadn r1, #4
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #1
  add r1, r1, r2
  loadn r2, #4
  sub r2, r0, r2
  storei r2, r1
L16:
  loadn r1, #4
  sub r1, r0, r1
  loadi r1, r1
  mov r7, r1
  jmp Lend4
Lend4:
  mov sp, r0
  pop r0
  rts
contarerros:
  push r0
  mov r0, sp
  loadn r7, #4
  sub r7, r0, r7
  mov sp, r7
  loadn r7, #1
  sub r7, r0, r7
  storei r7, r1
  loadn r7, #2
  sub r7, r0, r7
  storei r7, r2
  loadn r7, #3
  sub r7, r0, r7
  storei r7, r3
  loadn r1, #0
  loadn r2, #2
  sub r2, r0, r2
  storei r2, r1
L18:
  loadn r1, #2
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #7
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L19
  loadn r1, #0
  loadn r2, #3
  sub r2, r0, r2
  storei r2, r1
L21:
  loadn r1, #3
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #7
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L22
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  call qtderrosvizinhos
  mov r4, r7
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #2
  add r1, r1, r2
  storei r1, r4
  loadn r1, #3
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L21
L22:
L23:
  loadn r1, #2
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L18
L19:
L20:
Lend5:
  mov sp, r0
  pop r0
  rts
abrirquadrado:
  push r0
  mov r0, sp
  loadn r7, #5
  sub r7, r0, r7
  mov sp, r7
  loadn r7, #1
  sub r7, r0, r7
  storei r7, r1
  loadn r7, #2
  sub r7, r0, r7
  storei r7, r2
  loadn r7, #3
  sub r7, r0, r7
  storei r7, r3
  loadn r7, #4
  sub r7, r0, r7
  storei r7, r4
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  call coordenadaehvalida
  mov r4, r7
  jz L25
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  inc r1
  loadi r1, r1
  loadn r2, #0
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  mov r4, r1
  jz L25
  loadn r4, #1
L25:
  jz L24
  loadn r1, #1
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #2
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  inc r2
  storei r2, r1
  loadn r1, #4
  sub r1, r0, r1
  loadi r1, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #2
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #0
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L26
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  sub r2, r2, r3
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #4
  sub r4, r0, r4
  loadi r4, r4
  call abrirquadrado
  mov r5, r7
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #1
  sub r3, r3, r4
  loadn r4, #4
  sub r4, r0, r4
  loadi r4, r4
  call abrirquadrado
  mov r5, r7
L26:
L24:
Lend6:
  mov sp, r0
  pop r0
  rts
ganhou:
  push r0
  mov r0, sp
  loadn r7, #6
  sub r7, r0, r7
  mov sp, r7
  loadn r7, #1
  sub r7, r0, r7
  storei r7, r1
  loadn r7, #2
  sub r7, r0, r7
  storei r7, r2
  loadn r7, #3
  sub r7, r0, r7
  storei r7, r3
  loadn r7, #4
  sub r7, r0, r7
  storei r7, r4
  loadn r1, #0
  loadn r2, #5
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #0
  loadn r2, #2
  sub r2, r0, r2
  storei r2, r1
L27:
  loadn r1, #2
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #7
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L28
  loadn r1, #0
  loadn r2, #3
  sub r2, r0, r2
  storei r2, r1
L30:
  loadn r1, #3
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #7
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L31
  loadn r1, #4
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #39
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L34
  loadn r2, #1
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #2
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #21
  mul r3, r3, r4
  add r2, r2, r3
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #3
  mul r3, r3, r4
  add r2, r2, r3
  loadi r2, r2
  loadn r3, #0
  cmp r2, r3
  push fr
  pop r2
  loadn r7, #4
  and r2, r2, r7
  mov r1, r2
  jz L34
  loadn r1, #1
L34:
  jz L33
  loadn r1, #1
  loadn r2, #5
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #5
  sub r1, r0, r1
  loadi r1, r1
  mov r7, r1
  jmp Lend7
L33:
  loadn r1, #3
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L30
L31:
L32:
  loadn r1, #2
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L27
L28:
L29:
  loadn r1, #5
  sub r1, r0, r1
  loadi r1, r1
  mov r7, r1
  jmp Lend7
Lend7:
  mov sp, r0
  pop r0
  rts
colu:
  push r0
  mov r0, sp
  loadn r7, #12
  sub r7, r0, r7
  mov sp, r7
  loadn r7, #1
  sub r7, r0, r7
  storei r7, r1
  loadn r1, #0
  loadn r2, #1
  sub r2, r0, r2
  storei r2, r1
L35:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #7
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L36
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #11
  sub r2, r0, r2
  loadn r3, #50
  call itos
  mov r4, r7
  loadn r1, #str29
  call prints
  mov r2, r7
  loadn r1, #11
  sub r1, r0, r1
  call prints
  mov r2, r7
  loadn r1, #1
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L35
L36:
L37:
  loadn r1, #str30
  call prints
  mov r2, r7
Lend8:
  mov sp, r0
  pop r0
  rts
imprimir:
  push r0
  mov r0, sp
  loadn r7, #16
  sub r7, r0, r7
  mov sp, r7
  loadn r7, #1
  sub r7, r0, r7
  storei r7, r1
  loadn r7, #2
  sub r7, r0, r7
  storei r7, r2
  loadn r7, #3
  sub r7, r0, r7
  storei r7, r3
  loadn r7, #4
  sub r7, r0, r7
  storei r7, r4
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #str31
  call prints
  mov r2, r7
  loadn r1, #3
  sub r1, r0, r1
  loadi r1, r1
  call colu
  mov r2, r7
  loadn r1, #0
  loadn r2, #2
  sub r2, r0, r2
  storei r2, r1
L38:
  loadn r1, #2
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #7
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L39
  loadn r1, #2
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #14
  sub r2, r0, r2
  loadn r3, #50
  call itos
  mov r4, r7
  loadn r1, #str32
  call prints
  mov r2, r7
  loadn r1, #14
  sub r1, r0, r1
  call prints
  mov r2, r7
  loadn r1, #0
  loadn r2, #3
  sub r2, r0, r2
  storei r2, r1
L41:
  loadn r1, #3
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #7
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L42
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  inc r1
  loadi r1, r1
  loadn r2, #1
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L44
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #0
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L46
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #2
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #0
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L47
  loadn r1, #str33
  loadn r2, #15
  sub r2, r0, r2
  storei r2, r1
L47:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #2
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #1
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L48
  loadn r1, #str34
  loadn r2, #15
  sub r2, r0, r2
  storei r2, r1
L48:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #2
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #2
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L49
  loadn r1, #str35
  loadn r2, #15
  sub r2, r0, r2
  storei r2, r1
L49:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #2
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #3
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L50
  loadn r1, #str36
  loadn r2, #15
  sub r2, r0, r2
  storei r2, r1
L50:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #2
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #4
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L51
  loadn r1, #str37
  loadn r2, #15
  sub r2, r0, r2
  storei r2, r1
L51:
  loadn r1, #str38
  call prints
  mov r2, r7
  loadn r1, #15
  sub r1, r0, r1
  loadi r1, r1
  call prints
  mov r2, r7
  loadn r1, #str39
  call prints
  mov r2, r7
L46:
  jmp L45
L44:
  loadn r1, #str40
  call prints
  mov r2, r7
L45:
  loadn r1, #str41
  call prints
  mov r2, r7
  loadn r1, #3
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L41
L42:
L43:
  loadn r1, #str42
  call prints
  mov r2, r7
  loadn r1, #2
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L38
L39:
L40:
Lend9:
  mov sp, r0
  pop r0
  rts
play:
  push r0
  mov r0, sp
  loadn r7, #26
  sub r7, r0, r7
  mov sp, r7
  loadn r7, #1
  sub r7, r0, r7
  storei r7, r1
  loadn r7, #2
  sub r7, r0, r7
  storei r7, r2
  loadn r7, #3
  sub r7, r0, r7
  storei r7, r3
  loadn r7, #4
  sub r7, r0, r7
  storei r7, r4
L52:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #4
  sub r4, r0, r4
  loadi r4, r4
  call imprimir
  mov r5, r7
L54:
  loadn r1, #str43
  call prints
  mov r2, r7
  call getc
  mov r1, r7
  loadn r2, #48
  sub r1, r1, r2
  loadn r2, #2
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #2
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #15
  sub r2, r0, r2
  loadn r3, #50
  call itos
  mov r4, r7
  loadn r1, #15
  sub r1, r0, r1
  call prints
  mov r2, r7
  loadn r1, #str44
  call prints
  mov r2, r7
  call getc
  mov r1, r7
  loadn r2, #48
  sub r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #3
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #25
  sub r2, r0, r2
  loadn r3, #50
  call itos
  mov r4, r7
  loadn r1, #25
  sub r1, r0, r1
  call prints
  mov r2, r7
  loadn r1, #str45
  call prints
  mov r2, r7
  call getc
  mov r1, r7
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  call coordenadaehvalida
  mov r4, r7
  loadn r1, #0
  cmp r4, r1
  push fr
  pop r4
  loadn r7, #4
  and r4, r4, r7
  jz L56
  loadn r1, #str46
  call prints
  mov r2, r7
L56:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  call coordenadaehvalida
  mov r4, r7
  loadn r1, #0
  cmp r4, r1
  push fr
  pop r4
  loadn r7, #4
  and r4, r4, r7
  jz L57
  loadn r4, #1
  jmp L58
L57:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  inc r1
  loadi r1, r1
  loadn r2, #1
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  mov r4, r1
  jz L58
  loadn r4, #1
L58:
  jnz L54
L55:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #4
  sub r4, r0, r4
  call abrirquadrado
  mov r5, r7
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #4
  sub r4, r0, r4
  loadi r4, r4
  call ganhou
  mov r5, r7
  loadn r1, #0
  cmp r5, r1
  push fr
  pop r5
  loadn r7, #4
  and r5, r5, r7
  jz L59
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #0
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  mov r5, r1
  jz L59
  loadn r5, #1
L59:
  jnz L52
L53:
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #2
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #21
  mul r2, r2, r3
  add r1, r1, r2
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #3
  mul r2, r2, r3
  add r1, r1, r2
  loadi r1, r1
  loadn r2, #1
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L60
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #str47
  call prints
  mov r2, r7
  loadn r1, #str48
  call prints
  mov r2, r7
  loadn r1, #str49
  call prints
  mov r2, r7
  loadn r1, #str50
  call prints
  mov r2, r7
  loadn r1, #str51
  call prints
  mov r2, r7
  loadn r1, #str52
  call prints
  mov r2, r7
  loadn r1, #str53
  call prints
  mov r2, r7
  loadn r1, #str54
  call prints
  mov r2, r7
  loadn r1, #str55
  call prints
  mov r2, r7
  loadn r1, #str56
  call prints
  mov r2, r7
  loadn r1, #str57
  call prints
  mov r2, r7
  loadn r1, #str58
  call prints
  mov r2, r7
  loadn r1, #str59
  call prints
  mov r2, r7
  loadn r1, #str60
  call prints
  mov r2, r7
  loadn r1, #str61
  call prints
  mov r2, r7
  loadn r1, #str62
  call prints
  mov r2, r7
  loadn r1, #str63
  call prints
  mov r2, r7
  loadn r1, #str64
  call prints
  mov r2, r7
  loadn r1, #str65
  call prints
  mov r2, r7
  loadn r1, #str66
  call prints
  mov r2, r7
  loadn r1, #str67
  call prints
  mov r2, r7
  loadn r1, #0
  mov r7, r1
  jmp Lend10
  jmp L61
L60:
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #str68
  call prints
  mov r2, r7
  loadn r1, #str69
  call prints
  mov r2, r7
  loadn r1, #str70
  call prints
  mov r2, r7
  loadn r1, #str71
  call prints
  mov r2, r7
  loadn r1, #str72
  call prints
  mov r2, r7
  loadn r1, #str73
  call prints
  mov r2, r7
  loadn r1, #str74
  call prints
  mov r2, r7
  loadn r1, #str75
  call prints
  mov r2, r7
  loadn r1, #str76
  call prints
  mov r2, r7
  loadn r1, #str77
  call prints
  mov r2, r7
  loadn r1, #str78
  call prints
  mov r2, r7
  loadn r1, #str79
  call prints
  mov r2, r7
  loadn r1, #str80
  call prints
  mov r2, r7
  loadn r1, #str81
  call prints
  mov r2, r7
  loadn r1, #str82
  call prints
  mov r2, r7
  loadn r1, #str83
  call prints
  mov r2, r7
  loadn r1, #str84
  call prints
  mov r2, r7
  loadn r1, #str85
  call prints
  mov r2, r7
  loadn r1, #str86
  call prints
  mov r2, r7
  loadn r1, #str87
  call prints
  mov r2, r7
  loadn r1, #str88
  call prints
  mov r2, r7
  loadn r1, #str89
  call prints
  mov r2, r7
  call getc
  mov r1, r7
L61:
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  call continuacao
  mov r1, r7
  mov r7, r1
  jmp Lend10
  loadn r1, #1
  mov r7, r1
  jmp Lend10
Lend10:
  mov sp, r0
  pop r0
  rts
continuacao:
  push r0
  mov r0, sp
  loadn r7, #36
  sub r7, r0, r7
  mov sp, r7
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #str90
  call prints
  mov r2, r7
  loadn r1, #str91
  call prints
  mov r2, r7
  loadn r1, #str92
  call prints
  mov r2, r7
  loadn r1, #str93
  call prints
  mov r2, r7
  loadn r1, #str94
  call prints
  mov r2, r7
  loadn r1, #str95
  call prints
  mov r2, r7
  loadn r1, #str96
  call prints
  mov r2, r7
  loadn r1, #str97
  call prints
  mov r2, r7
  loadn r1, #str98
  call prints
  mov r2, r7
  loadn r1, #str99
  call prints
  mov r2, r7
  loadn r1, #str100
  call prints
  mov r2, r7
  loadn r1, #str101
  call prints
  mov r2, r7
  loadn r1, #str102
  call prints
  mov r2, r7
  loadn r1, #str103
  call prints
  mov r2, r7
  loadn r1, #str104
  call prints
  mov r2, r7
  loadn r1, #str105
  call prints
  mov r2, r7
  loadn r1, #str106
  call prints
  mov r2, r7
  loadn r1, #str107
  call prints
  mov r2, r7
  loadn r1, #str108
  call prints
  mov r2, r7
  call getc
  mov r1, r7
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #99
  loadn r2, #7
  sub r2, r0, r2
  loadn r3, #0
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #104
  loadn r2, #7
  sub r2, r0, r2
  loadn r3, #1
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #117
  loadn r2, #7
  sub r2, r0, r2
  loadn r3, #2
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #118
  loadn r2, #7
  sub r2, r0, r2
  loadn r3, #3
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #97
  loadn r2, #7
  sub r2, r0, r2
  loadn r3, #4
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #115
  loadn r2, #7
  sub r2, r0, r2
  loadn r3, #5
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #48
  loadn r2, #7
  sub r2, r0, r2
  loadn r3, #6
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #3
  loadn r2, #19
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #6
  loadn r2, #20
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #0
  loadn r2, #21
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #0
  loadn r2, #22
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #0
  loadn r2, #23
  sub r2, r0, r2
  storei r2, r1
L62:
  loadn r1, #23
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #20
  sub r2, r0, r2
  loadi r2, r2
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L63
  loadn r1, #95
  loadn r2, #17
  sub r2, r0, r2
  loadn r3, #23
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #23
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L62
L63:
L64:
L65:
  loadn r1, #0
  loadn r2, #19
  sub r2, r0, r2
  loadi r2, r2
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L66
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #str109
  call prints
  mov r2, r7
  loadn r1, #19
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #33
  sub r2, r0, r2
  loadn r3, #10
  call itos
  mov r4, r7
  loadn r1, #33
  sub r1, r0, r1
  call prints
  mov r2, r7
  loadn r1, #str110
  call prints
  mov r2, r7
  loadn r1, #str111
  call prints
  mov r2, r7
  loadn r1, #str112
  call prints
  mov r2, r7
  loadn r1, #str113
  call prints
  mov r2, r7
  loadn r1, #str114
  call prints
  mov r2, r7
  loadn r1, #str115
  call prints
  mov r2, r7
  loadn r1, #0
  loadn r2, #34
  sub r2, r0, r2
  storei r2, r1
L68:
  loadn r1, #34
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #20
  sub r2, r0, r2
  loadi r2, r2
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L69
  loadn r1, #17
  sub r1, r0, r1
  loadn r2, #34
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #1
  mul r2, r2, r3
  add r1, r1, r2
  loadi r1, r1
  call printc
  mov r2, r7
  loadn r1, #34
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L68
L69:
L70:
  call getc
  mov r1, r7
  loadn r2, #18
  sub r2, r0, r2
  loadi r2, r2
  storei r2, r1
  loadn r1, #0
  loadn r2, #22
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #0
  loadn r2, #35
  sub r2, r0, r2
  storei r2, r1
L71:
  loadn r1, #35
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #20
  sub r2, r0, r2
  loadi r2, r2
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #2
  and r1, r1, r7
  jz L72
  loadn r1, #18
  sub r1, r0, r1
  loadi r1, r1
  loadi r1, r1
  loadn r2, #7
  sub r2, r0, r2
  loadn r3, #35
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  loadi r2, r2
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L75
  loadn r2, #17
  sub r2, r0, r2
  loadn r3, #35
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  loadi r2, r2
  loadn r3, #95
  cmp r2, r3
  push fr
  pop r2
  loadn r7, #4
  and r2, r2, r7
  mov r1, r2
  jz L75
  loadn r1, #1
L75:
  jz L74
  loadn r1, #18
  sub r1, r0, r1
  loadi r1, r1
  loadi r1, r1
  loadn r2, #17
  sub r2, r0, r2
  loadn r3, #35
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #1
  mul r3, r3, r4
  add r2, r2, r3
  storei r2, r1
  loadn r1, #1
  loadn r2, #22
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #21
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #1
  add r1, r1, r2
  loadn r2, #21
  sub r2, r0, r2
  storei r2, r1
L74:
  loadn r1, #35
  sub r1, r0, r1
  loadi r2, r1
  inc r2
  storei r1, r2
  dec r2
  jmp L71
L72:
L73:
  loadn r1, #22
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #0
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L76
  loadn r1, #19
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #1
  sub r1, r1, r2
  loadn r2, #19
  sub r2, r0, r2
  storei r2, r1
L76:
  loadn r1, #21
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #20
  sub r2, r0, r2
  loadi r2, r2
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L77
  jmp L67
L77:
  jmp L65
L66:
L67:
  loadn r1, #19
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #0
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jz L78
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #str116
  call prints
  mov r2, r7
  loadn r1, #str117
  call prints
  mov r2, r7
  loadn r1, #str118
  call prints
  mov r2, r7
  loadn r1, #str119
  call prints
  mov r2, r7
  loadn r1, #str120
  call prints
  mov r2, r7
  loadn r1, #str121
  call prints
  mov r2, r7
  loadn r1, #str122
  call prints
  mov r2, r7
  loadn r1, #str123
  call prints
  mov r2, r7
  loadn r1, #str124
  call prints
  mov r2, r7
  loadn r1, #str125
  call prints
  mov r2, r7
  loadn r1, #str126
  call prints
  mov r2, r7
  loadn r1, #str127
  call prints
  mov r2, r7
  loadn r1, #str128
  call prints
  mov r2, r7
  loadn r1, #str129
  call prints
  mov r2, r7
  loadn r1, #str130
  call prints
  mov r2, r7
  loadn r1, #str131
  call prints
  mov r2, r7
  loadn r1, #0
  mov r7, r1
  jmp Lend11
  jmp L79
L78:
  loadn r1, #19
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #0
  cmp r1, r2
  push fr
  pop r1
  not r1, r1
  loadn r7, #4
  and r1, r1, r7
  jz L80
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #str132
  call prints
  mov r2, r7
  loadn r1, #str133
  call prints
  mov r2, r7
  loadn r1, #str134
  call prints
  mov r2, r7
  loadn r1, #str135
  call prints
  mov r2, r7
  loadn r1, #str136
  call prints
  mov r2, r7
  loadn r1, #str137
  call prints
  mov r2, r7
  loadn r1, #str138
  call prints
  mov r2, r7
  loadn r1, #str139
  call prints
  mov r2, r7
  loadn r1, #str140
  call prints
  mov r2, r7
  loadn r1, #str141
  call prints
  mov r2, r7
  loadn r1, #str142
  call prints
  mov r2, r7
  loadn r1, #str143
  call prints
  mov r2, r7
  loadn r1, #str144
  call prints
  mov r2, r7
  loadn r1, #str145
  call prints
  mov r2, r7
  loadn r1, #str146
  call prints
  mov r2, r7
  loadn r1, #str147
  call prints
  mov r2, r7
  loadn r1, #str148
  call prints
  mov r2, r7
  loadn r1, #str149
  call prints
  mov r2, r7
  loadn r1, #str150
  call prints
  mov r2, r7
  loadn r1, #str151
  call prints
  mov r2, r7
  loadn r1, #str152
  call prints
  mov r2, r7
  loadn r1, #str153
  call prints
  mov r2, r7
  loadn r1, #str154
  call prints
  mov r2, r7
  loadn r1, #str155
  call prints
  mov r2, r7
  loadn r1, #str156
  call prints
  mov r2, r7
  call getc
  mov r1, r7
L80:
L79:
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #1
  mov r7, r1
  jmp Lend11
Lend11:
  mov sp, r0
  pop r0
  rts
main:
  push r0
  mov r0, sp
  loadn r7, #152
  sub r7, r0, r7
  mov sp, r7
L81:
  loadn r1, #0
  loadn r2, #2
  sub r2, r0, r2
  storei r2, r1
  call introducao
  mov r1, r7
  call historia
  mov r1, r7
  loadn r1, #151
  sub r1, r0, r1
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #4
  sub r3, r0, r3
  loadi r3, r3
  call inicializartabuleiro
  mov r4, r7
  loadn r1, #151
  sub r1, r0, r1
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #4
  sub r3, r0, r3
  loadi r3, r3
  call contarerros
  mov r4, r7
  loadn r1, #151
  sub r1, r0, r1
  loadn r2, #3
  sub r2, r0, r2
  loadi r2, r2
  loadn r3, #4
  sub r3, r0, r3
  loadi r3, r3
  loadn r4, #2
  sub r4, r0, r4
  loadi r4, r4
  call play
  mov r5, r7
  loadn r1, #str157
  call prints
  mov r2, r7
  loadn r1, #str158
  call prints
  mov r2, r7
  call getc
  mov r1, r7
  loadn r2, #48
  sub r1, r1, r2
  loadn r2, #1
  sub r2, r0, r2
  storei r2, r1
  loadn r1, #1
  sub r1, r0, r1
  loadi r1, r1
  loadn r2, #1
  cmp r1, r2
  push fr
  pop r1
  loadn r7, #4
  and r1, r1, r7
  jnz L81
L82:
  loadn r1, #0
  call sfill
  mov r2, r7
  loadn r1, #0
  loadn r2, #__cursor
  storei r2, r1
  loadn r1, #0
  mov r7, r1
  jmp Lend12
Lend12:
  mov sp, r0
  pop r0
  rts
str0 : string "\n -----------ATAQUE AO BANCO!-----------\n\n"
str1 : string "\n      _|_|___________________|_|__    \n"
str2 : string "      |__:_________$___________:__|  \n"
str3 : string "      |___________________________|  \n"
str4 : string "      |__:_____________________:__|  \n"
str5 : string "      |___________________________|  \n"
str6 : string "        |_|___________________|_|    \n"
str7 : string "       /__.___________________.__   \n"
str8 : string "      /__._____________________.__  \n"
str9 : string "     /_____________________________ \n"
str10 : string "        | |_|               |_| |    \n"
str11 : string "        | |                   | |    \n"
str12 : string "        | |                   | |    \n"
str13 : string "        |_|                   |_|    \n\n"
str14 : string "\n---APERTE QUALQUER LETRA PARA INICIAR---\n"
str15 : string "\n VOCE INVADIU UM BANCO,E A SUA PRIMEIRA"
str16 : string "\n   MISSAO EH RESOLVER O ENIGMA PARA    \n"
str17 : string "      DESARMAR O ALARME. CUIDADO!      \n\n"
str18 : string "\n              _ _.-'`-._ _             \n"
str19 : string "             ;'____$____'.;            \n"
str20 : string "  _________n.[____________].n_________ \n"
str21 : string " |-_ $ _--_--||==||==||==||--_--_ $_--|\n"
str22 : string " |+++++++++++||..||..||..||+++++++++++|\n"
str23 : string " |LI LI LI LI||LI||LI||LI||LI LI LI LI|\n"
str24 : string " |.. .. .. ..||..||..||..||.. .. .. ..|\n"
str25 : string " |LI LI LI LI||LI||LI||LI||LI LI LI LI|\n"
str26 : string " ,;;,;;;,;;;,;;;,;;;,;;;,;;;,;;,;;;,;;;\n"
str27 : string " ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\n"
str28 : string "\n--APERTE QUALQUER LETRA PARA CONTINUAR--\n"
str29 : string "    "
str30 : string "\n   ----------------------------------\n"
str31 : string "\n\n"
str32 : string " "
str33 : string "E"
str34 : string "U"
str35 : string "!"
str36 : string "T"
str37 : string "Q"
str38 : string "  "
str39 : string " "
str40 : string "    "
str41 : string "|"
str42 : string "\n   ----------------------------------\n"
str43 : string "\nDigite as coordenadas de linha e coluna:"
str44 : string " "
str45 : string "\n\n------------APERTE 'ENTER'--------------"
str46 : string "A coordenada digitada eh invalida!"
str47 : string "\n    O ALARME TOCOU E VOCE FOI ATINGIDO\n"
str48 : string "\n       POR UMA 'EXPLOSAO DE TINTA'!   \n\n"
str49 : string "\n          4$$c              .$$r   \n"
str50 : string "         ^$$$b              e$$$   \n"
str51 : string "         ^$$$b              e$$$   \n"
str52 : string "         d$$$$$e          z$$$$$b  \n"
str53 : string "        4$$$*$$$$$c    .$$$$$*$$$r \n"
str54 : string "        4$$$*$$$$$c    .$$$$$*$$$r \n"
str55 : string "         **    **$$$be$$$*    **   \n"
str56 : string "                  *$$$$*           \n"
str57 : string "                  *$$$$*           \n"
str58 : string "                .d$$P$$$b          \n"
str59 : string "              d$$P     ^$$$b       \n"
str60 : string "              d$$P     ^$$$b       \n"
str61 : string "           .ed$$$*      *$$$be.    \n"
str62 : string "           .ed$$$*      *$$$be.    \n"
str63 : string "         $$$$$$P          *$$$$$$  \n"
str64 : string "         $$$$$$P          *$$$$$$  \n"
str65 : string "        4$$$$$P            $$$$$$* \n"
str66 : string "         **$$$*            ^$$P    \n"
str67 : string "            **              ^*     \n"
str68 : string "\n------SUCESSO EM DESARMAR O ALARME!-----\n"
str69 : string "\n            ##############\n"
str70 : string "            ##          ##\n"
str71 : string "            ##          ##\n"
str72 : string "            ##..........##\n"
str73 : string "            ##..........##\n"
str74 : string "                ......    \n"
str75 : string "              ##......##  \n"
str76 : string "                ##..##    \n"
str77 : string "                ##..##    \n"
str78 : string "                  ..      \n"
str79 : string "                ##..##    \n"
str80 : string "                ##..##    \n"
str81 : string "              ##  ..  ##  \n"
str82 : string "                  ..      \n"
str83 : string "            ##    ..    ##\n"
str84 : string "            ##..........##\n"
str85 : string "            ##  ......  ##\n"
str86 : string "            ##  ......  ##\n"
str87 : string "            ##..........##\n"
str88 : string "            ##############\n"
str89 : string "\n\n--APERTE QUALQUER TECLA PARA CONTINUAR--\n"
str90 : string "\n\n   AGORA QUE VOCE ESTA NO BANCO, VOCE \n"
str91 : string "   PRECISA DESCRIPTOGRAFAR A SENHA DO \n"
str92 : string "  COMPUTADOR DA GERENTE PARA CONSEGUIR\n"
str93 : string "  FAZER ALGUNS DEPOSITOS NA SUA CONTA.\n\n\n"
str94 : string "              c 8 u v 4 s           \n"
str95 : string "          ._________________.        \n"
str96 : string "          |.---------------.|        \n"
str97 : string "          ||               ||        \n"
str98 : string "          ||   -._ .-.     ||        \n"
str99 : string "          ||   -._| | |    ||        \n"
str100 : string "          ||   -._|-|-|    ||        \n"
str101 : string "          ||   -._|.-.|    ||        \n"
str102 : string "          ||_______________||        \n"
str103 : string "          /.-.-.-.-.-.-.-.- \\       \n"
str104 : string "         /.-.-.-.-.-.-.-.-.- \\      \n"
str105 : string "        /.-.-.-.-.-.-.-.-.-.- \\     \n"
str106 : string "       /______/_________\\____ \\    \n"
str107 : string "       \\_______________________/    \n\n\n"
str108 : string "\n----APERTE 'y' PARA CONTINUAR----\n"
str109 : string "\n\n Voce tem "
str110 : string " chances para acertar a senha "
str111 : string "    a palavra tem 6 letras, boa sorte!\n"
str112 : string "\n\n----DIGITE AS LETRAS EM 'minusculo'-----\n"
str113 : string "\n  Observacao - sua chance so eh gasta\n"
str114 : string "    se errar a letra ou se a repete  \n"
str115 : string "\n\n\nDigite uma letra: "
str116 : string "\n"
str117 : string "\n INFELIZMENTE VOCE FEZ MUITAS TENTATIVAS\n"
str118 : string " O SEU IP FOI RASTREADO E VOCE FOI PRESO"
str119 : string "\n                 __//__             \n"
str120 : string "                 __//__             \n"
str121 : string "                `**//**`            \n"
str122 : string "      ____________/__/____________  \n"
str123 : string "      ____________/__/____________  \n"
str124 : string "     /__________POLICIA__________/ \n"
str125 : string "       __||__||__/.--./__||__||__   \n"
str126 : string "       __||__||__/.--./__||__||__   \n"
str127 : string "    /__|___|___ (  xx  )___|___|__/ \n"
str128 : string "    /__|___|___ (  xx  )___|___|__/ \n"
str129 : string "                _/`--`/_            \n"
str130 : string "               (/------/)           \n"
str131 : string "               (/------/)           \n\n\n"
str132 : string "\n      VOCE CONSEGUIU DESBLOQUEAR O \n"
str133 : string "   COMPUTADOR E TRANFERIR O DINHEIRO!         "
str134 : string "\n\n                                     \n"
str135 : string "                  #####                \n"
str136 : string "             ##############          \n"
str137 : string "             ##############          \n"
str138 : string "                                       \n"
str139 : string "             ##############          \n"
str140 : string "         ######################      \n"
str141 : string "       ##########    ############    \n"
str142 : string "     ##########        ############  \n"
str143 : string "     ##########        ############  \n"
str144 : string "    #########    ####    ########### \n"
str145 : string "   ##########          ##############\n"
str146 : string "  #############          ############\n"
str147 : string "  ###########    ####    ############\n"
str148 : string "  ############            ############\n"
str149 : string "  ###########            ############\n"
str150 : string "   ##############    ############### \n"
str151 : string "   ##############    ############### \n"
str152 : string "    ##############################   \n"
str153 : string "    ##############################   \n"
str154 : string "        #######################      \n"
str155 : string "                                     \n\n"
str156 : string "--APERTE QUALQUER TECLA PARA CONTINUAR--\n"
str157 : string "\n\nDIGITE 1 PARA JOGAR NOVAMENTE!"
str158 : string "\n\nDIGITE 0 PARA ENCERRAR! \n"
; getc   : aguarda e le um caracter do teclado
; out r7 : caracter lido
getc:
  push r1

  loadn r1, #255

  getc_loop:
    inchar r7
    cmp r7, r1
    jeq getc_loop

  getc_rts:
    pop r1
    rts

; scans   : aguarde e le uma string do teclado
; in * r1 : string de destino
; in r2   : numero de caracteres a serem lidos
scans:
  push r3
  push r4
  push r5
  push r6

  xor r3, r3, r3
  loadn r4, #13 ; '\r'
  loadn r5, #255  

  scans_loop:
    cmp r2, r3
    jel scans_rts

    scans_loop_inchar:
      inchar r6
      cmp r6, r5
      jeq scans_loop_inchar
    cmp r6, r4
    jeq scans_rts

    storei r1, r6
    inc r1
    dec r2
    jmp scans_loop

  scans_rts:
    storei r1, r3
    
    pop r3
    pop r4
    pop r5
    pop r6
    rts

; puts    : imprime uma string em uma posição da tela
; in * r1 : string
; in r2   : posição
puts:
  push r3
  push r4
  push r5
  push r6
  push r7

  xor r5, r5, r5
  loadn r6, #'\n'
  loadn r7, #40

  puts_loop:
    loadi r3, r1

    cmp r3, r5
    jel puts_rts

    cmp r3, r6
    jne puts_loop_ne
    mod r4, r2, r7
    sub r4, r7, r4
    add r2, r2, r4
    dec r2

    puts_loop_ne:
    outchar r3, r2
    inc r1
    inc r2
    jmp puts_loop

  puts_rts:
    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    rts

; printc : imprime um caracter na posição do cursor
; in r1  : caracter
printc:
  push r2

  load r2, __cursor
  outchar r1, r2
  inc r2
  store __cursor, r2

  printc_rts:
    pop r2
    rts

; prints  : imprime uma string na posição do cursor
; in * r1 : string
prints:
  push r2

  load r2, __cursor
  call puts
  store __cursor, r2

  prints_rts:
    pop r2
    rts

; sfill : preenche a tela com um caracter
; in r1 : caracter
sfill:
  push r2

  loadn r2, #1200

  sfill_loop:
    dec r2
    outchar r1, r2
    jnz sfill_loop

  sfill_rts:
    pop r2
    rts

__cursor : var #1 
static __cursor, #0
; stoi    : converte uma string para um inteiro, seguindo a base especificada
; in * r1 : string
; in r2   : base
; out r7  : numero
stoi:
  push r3
  push r4
  push r5
  push r6

  xor r4, r4, r4
  loadn r5, #'0'
  loadn r6, #'W'
  xor r7, r7, r7

  stoi_loop:
    loadi r3, r1
    cmp r3, r4
    jeq stoi_rts

    cmp r3, r6
    jeg stoi_loop_eg  
    
    sub r3, r3, r5
    jmp stoi_loop_le
    stoi_loop_eg:
    sub r3, r3, r6
    stoi_loop_le:

    mul r7, r7, r2
    add r7, r7, r3

    inc r1
    jmp stoi_loop

  stoi_rts:
    pop r6
    pop r5
    pop r4
    pop r3
    rts

; itos    : converte um inteiro para uma string, seguindo a base especificada
; in r1   : numero
; in * r2 : string de destino
; in r3   : base
itos:
  push r4
  push r5
  push r6
  push r7
  push r2

  loadn r5, #'0'
  loadn r6, #10
  loadn r7, #39

  itos_loop:
    mod r4, r1, r3

    cmp r4, r6
    jle itos_loop_le
    add r4, r4, r7

    itos_loop_le:
    add r4, r4, r5
    storei r2, r4

    inc r2
    div r1, r1, r3
    jnz itos_loop

  storei r2, r1

  pop r2
  mov r1, r2
  call strrev

  itos_rts:
    pop r7
    pop r6
    pop r5
    pop r4
    rts

; memset  : preenche um bloco de memoria continuo com um valor
; in * r1 : endereco do bloco de memoria
; in r2   : valor a ser escrito
; in r3   : tamanho do bloco
memset:
  push r4

  xor r4, r4, r4

  memset_loop:
    cmp r3, r4
    jel memset_rts

    storei r1, r2

    inc r1
    dec r3
    jmp memset_loop

  memset_rts:
    pop r4
    rts

; memcpy  : copia um bloco de memoria continuo para um endereco de destino
; in * r1 : destino
; in * r2 : origem
; in r3   : tamanho a ser copiado
memcpy:
  push r4
  push r5

  xor r4, r4, r4

  memcpy_loop:
    cmp r3, r4
    jel memcpy_rts

    loadi r5, r2
    storei r1, r5

    inc r1
    inc r2
    dec r3
    jmp memcpy_loop

  memcpy_rts:
    pop r5
    pop r4
    rts

; strcmp  : compara duas strings terminadas em '\0'
; in * r1 : primeira string
; in * r2 : segunda string
; out r7  : 0 caso forem diferentes, 1 caso forem iguais
strcmp:
  push r3
  push r4
  push r5

  xor r3, r3, r3

  strcmp_loop:
    loadi r4, r1
    loadi r5, r2
    
    cmp r4, r3
    jeq strcmp_rts
    cmp r4, r5
    jne strcmp_rts

    inc r1
    inc r2
    jmp strcmp_loop
  
  strcmp_rts:
    sub r7, r4, r5
    
    pop r5
    pop r4
    pop r3
    rts

; strrev  : reverte uma string (inplace)
; in * r1 : string
strrev:
  push r2
  push r3
  push r7

  ; endereco de memoria do fim da string - 1
  ; r1 + (strlen(r1) - 1)
  push r1
  call strlen
  pop r1
  
  dec r7
  add r7, r7, r1

  strrev_loop:
    ; troca a posicao entre os caracteres
    loadi r2, r1
    loadi r3, r7
    storei r1, r3 
    storei r7, r2

    dec r7
    inc r1

    ; r1 >= r7 ? return
    cmp r1, r7
    jle strrev_loop

  strrev_rts:
    pop r7
    pop r3
    pop r2
    rts

; strlen  : calcula o numero de caracteres de uma string (ignorando '\0')
; in * r1 : string
; out r7  : numero de caracteres
strlen:
  push r2 ; caractere da string apontado por r2
  push r3 ; caractere que termina a string ('\0')

  xor r2, r2, r2
  xor r7, r7, r7

  strlen_loop:
    loadi r3, r1

    cmp r3, r2
    jeq strlen_rts
    
    inc r1
    inc r7
    jmp strlen_loop

  strlen_rts:
    pop r3
    pop r2
    rts
