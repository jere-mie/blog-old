#!/bin/sh
mkdir 2140-javacup
cd 2140-javacup
mkdir JLex
cd JLex
curl http://jlu.myweb.cs.uwindsor.ca/214/Main.java -o Main.java
javac Main.java
cd ..
curl https://jlu.myweb.cs.uwindsor.ca/214/javaCup.tar -o javaCup.tar
tar -xvf *.tar
rm *.tar
curl https://jlu.myweb.cs.uwindsor.ca/214/calc.lex -o calc.lex
curl https://jlu.myweb.cs.uwindsor.ca/214/calc.cup -o calc.cup
curl https://jlu.myweb.cs.uwindsor.ca/214/CalcParserUser.java -o CalcParserUser.java
curl https://jlu.myweb.cs.uwindsor.ca/214/calc.input -o calc.input
java JLex.Main calc.lex
java java_cup.Main -parser CalcParser -symbols CalcSymbol calc.cup
javac calc.lex.java
javac CalcParser.java CalcSymbol.java CalcParserUser.java
java CalcParserUser