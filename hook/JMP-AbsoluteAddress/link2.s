# apt-get install gcc-arm-linux-gnueabi
# +++++++++++Makefile++++++++++++++ 
#  
# link2:  link2.s 
# arm-linux-gcc -c -o link2.o link2.s 
# arm-linux-ld -Ttext 0x00000000 link2.o -o link2_elf_0x00000000 
# arm-linux-ld -Ttext 0x30000000 link2.o -o link2_elf_0x30000000 
# arm-linux-objdump -D link2_elf_0x00000000 > link2_0x00000000_dis 
# arm-linux-objdump -D link2_elf_0x30000000 > link2_0x30000000_dis 
# clean : 
# rm -f  *.o
.text
.global _start
_start:     b step1
step1:      ldr pc,=step2
step2:      ldr pc,step3
step3:      .long handler
handler:    b step4
step4:      b step4