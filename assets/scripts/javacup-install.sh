mkdir 2140-javacup
cd 2140-javacup
mkdir JLex
cd JLex
wget http://jlu.myweb.cs.uwindsor.ca/214/Main.java
javac Main.java
cd ..
wget https://jlu.myweb.cs.uwindsor.ca/214/javaCup.tar
tar -xvf *.tar
rm *.tar
wget https://jlu.myweb.cs.uwindsor.ca/214/calc.lex
wget https://jlu.myweb.cs.uwindsor.ca/214/calc.cup
wget https://jlu.myweb.cs.uwindsor.ca/214/CalcParserUser.java
wget https://jlu.myweb.cs.uwindsor.ca/214/calc.input
java JLex.Main calc.lex
java java_cup.Main -parser CalcParser -symbols CalcSymbol calc.cup
javac calc.lex.java
javac CalcParser.java CalcSymbol.java CalcParserUser.java
java CalcParserUser