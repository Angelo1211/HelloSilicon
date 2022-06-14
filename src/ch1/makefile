HelloWorld: helloworld.o
	ld -o HelloWorld helloworld.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

helloworld.o: helloworld.asm
	as -arch arm64 -o helloworld.o helloworld.asm

