link2:  link2.s 
	arm-linux-gnueabi-gcc -c -o link2.o link2.s 
	arm-linux-gnueabi-ld -Ttext 0x00000000 link2.o -o link2_elf_0x00000000 
	arm-linux-gnueabi-ld -Ttext 0x30000000 link2.o -o link2_elf_0x30000000 
	arm-linux-gnueabi-objdump -D link2_elf_0x00000000 > link2_0x00000000_dis 
	arm-linux-gnueabi-objdump -D link2_elf_0x30000000 > link2_0x30000000_dis 
clean : 
	rm -f  *.o
	rm -f link2_elf*
	rm -f link2_*_dis
