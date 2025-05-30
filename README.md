# VE20008-DEC
Portafolio

- Contenido:

1. Resta de tres enteros (registros de 16 bits)

   -Programa que realiza la resta de tres números enteros usando registros de 16 bits (`AX`, `BX`, `CX`). Al final, imprime el resultado en pantalla.

2. Multiplicación de dos números (registros de 8 bits)

   -Programa que multiplica dos números enteros usando registros de 8 bits (`AL`, `BL`). El resultado se almacena en `AX` y se muestra por pantalla.

3. División de dos números (registros de 32 bits)

   -Programa que divide dos números enteros usando registros de 32 bits (`EAX`, `EBX`, `EDX`). Realiza la división entera, muestra el cociente en pantalla y luego termina.


Propósito de cada ejercicio

- Resta de tres enteros: Usar datos de 16 bits en operaciones aritméticas básicas y conversión de números a texto para impresión en consola.

- Multiplicación de dos números: Hacer el uso de datos de 8 bits para operaciones de multiplicación y cómo manejar el resultado que puede ocupar más bits.

- División de dos números: Aprender a usar datos de 32 bits para división entera y cómo preparar registros (`EDX`) antes de dividir.


- Cómo ejecutar los programas:

- bash

Para el archivo Resta.asm:
nasm -f elf64 Resta.asm -o Resta.o
ld Resta.o -o Resta
./Resta

Para el archivo Multiplicacion.asm:
nasm -f elf64 Multiplicacion.asm -o Multiplicacion.o
ld Multiplicacion.o -o Multiplicacion
./Multiplicacion

Para el archivo Division.asm:
nasm -f elf64 Division.asm -o Division.o
ld Division.o -o Division
./Division
