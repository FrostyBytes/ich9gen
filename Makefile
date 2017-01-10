all: ich9gen.a
	./ich9gen.a

ich9gen.a:
	gcc -Wall -Wextra -Werror -Os -o ./ich9gen.a ./ich9gen.c ./mkgbe.c ./x86compatibility.c ./gbe.c ./descriptor_gbe.c ./mkdescriptor.c ./descriptor.c
