---
layout: post
title: Instructions to Install JLex on Linux
author:
- Jeremie Bornais
---

Want all the instructions in one code block without the explanations? Check out the [appendix](#appendix).

## Before Starting

### Prerequesite Software

These instructions are for Linux machines. If you're a Windows user, I recommend using the [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install). The only prerequesite software required is Java. If you're on a Debian-based system and don't have Java installed, you can install it via `sudo apt install default-jre` and `sudo apt install default-jdk`.

### Organization 

You may want to create a separate "2140" directory for this class:

```bash
mkdir -p 2140
cd 2140
```

Make sure you download the following two files:

1. [Main.java](https://blog.bornais.ca/assets/2140/lex/Main.java)
2. [simple.lex](https://blog.bornais.ca/assets/2140/lex/simple.lex)

You can download files on the CS servers by running `curl url -o filename`, where `url` is replaced with the url of the file you want to download, and `filename` is the filename of the file you're downloading.  
So, to download these two files, you can run:

```bash
curl https://blog.bornais.ca/assets/2140/lex/Main.java -o Main.java
curl https://blog.bornais.ca/assets/2140/lex/simple.lex -o simple.lex
```

## Instructions

1. Create a "JLex" directory (case sensitive!):

```bash
mkdir -p JLex
```

2. Move "Main.java" (attached) into the JLex directory

```bash
 mv Main.java JLex
```

3. cd into the JLex directory

```bash
cd JLex
```

4. Compile "Main.java"

```bash
javac Main.java
```

5. Move back to the parent directory

```bash
cd ..
```

6. JLex is now installed! You can now run the scanner generator.  
   The general method to do this is to run: `java JLex.Main lexFileName`, replacing `lexFileName` with the name of your lex file.  
   We'll use the sample lex file `simple.lex`, courtesy of Dr. Jianguo Lu, which we downloaded earlier.  
   To run this file, simply type:

```bash
java JLex.Main simple.lex
```

7. You should now see a new file generated, called `lexFileName.java`, or in this case `simple.lex.java`. We must now compile it, by typing:

```bash
javac simple.lex.java
```

8. A new file, `MyLexer.class` should have been created (note, if using a lex file other than `simple.lex`, this file may be named something different). We can now run the lexer by running:

```bash
java MyLexer
```

## That's it!

Now try typing stuff on your keyboard and see how the lexer responds. Try typing "int" or typing some words, like "hello" and "world".

## Appendix

### All the commands in one block

```bash
mkdir -p 2140
cd 2140

curl https://blog.bornais.ca/assets/2140/lex/Main.java -o Main.java
curl https://blog.bornais.ca/assets/2140/lex/simple.lex -o simple.lex

mkdir -p JLex
mv Main.java JLex
cd JLex
javac Main.java
cd ..

java JLex.Main simple.lex
javac simple.lex.java
java MyLexer
```
