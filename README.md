# Arithmetic Language (alang)

Simple language for evaluating expressions. Features:
(1) Addition
(2) Subtraction
(3) Multiplication
(4) Division

NOTE: the above operations can only be carried out on integers of size 'word'


## Installation
Please be sure you have a C compiler installed on your system. On linux, this can be obtained
through your distribution's package manager. On MacOS, this can be installed through
[Homebrew](https://brew.sh/). If you're on Windows, good luck sucker.

## QBE
To be able to compile your programs, you will need to
[install QBE compiler](https://c9x.me/compile/) to compile the QBE Intermediate Representation
(IR).

## Bootstrapping Alang from Source
Once you are able to compiler C and QBE IR, you can now compiler the Alang compiler simply by doing
the following:
```sh
git clone https://github.com/Num0Programmer/alang.git
cd alang
make
```

## Compiling
Now that the compiler is built, you can compile and run your own Alang programs. For a reference,
check out examples in the 'examples/' directory. Try building and running the addition example by
running the following:
```sh
./alc examples/add.a add.qbe
qbe add.qbe -o add.s
cc add.s -o add
./add
```
The result should be:
```sh
19
```


## Technologies
[1] [QBE Compiler Backend](https://c9x.me/compile/)
