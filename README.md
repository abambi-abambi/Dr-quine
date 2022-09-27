# Dr-quine

## Read:

the **subject.pdf** for more information about the project.

~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~

## There are 3 folders
corresponding to: **C**, **ASM** and **Java** language, respectively.

## Project works with: 

- **ASM**: Linux (Ubuntu) 64-bits (x86_64). Compiler: nasm + clang. Flags: -f elf64 (nasm), -Wextra -Wall -Werror -m64 -no-pie -lc (clang)
- **C**: Linux (Ubuntu) 64-bits (x86_64). Compiler: clang. Flags: -Wextra -Wall -Werror
- **Java**: Linux (Ubuntu) 64-bits (x86_64). Compiler: javac. + use of C pre processor (cpp -P) for macros support in one case.

## Building the project(s):
go to each folder (**C**, **ASM** and **JAVA**) in a terminal and print:

**`make`**

~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~

Each folder will include 3 programs:

- *Colleen*,	when launched,

		prints it's overall content to stdout
- *Grace*,		when launched,

		prints it's overall content to Grace_kid (file)
- *Sully*,		when launched,

		prints it's overall content to Sully_5 file,
		Sully_5 prints it's overall content to Sully_4,
		Sully_4 prints it's overall content to Sully_3,
		Sully_3 prints it's overall content to Sully_2,
		Sully_2 prints it's overall content to Sully_1,
		Sully_1 prints it's overall content to Sully_0.


## Launching the project:

**C**:

- ./Colleen
- ./Grace
- ./Sully

**ASM**:

- ./Colleen
- ./Grace
- ./Sully

**Java**:

- java Colleen
- java Grace
- java Sully

> Colleen and it's output doesn't have difference.

> Grace and it's output doesn't have difference.

> Sully's content with it's 'kids' has only difference in the initial integer (5) (for new file_name creations).

~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~

## For test cases and rules see:
comments inside **Makefile** (in each folder) and the **ckecklist.pdf**

