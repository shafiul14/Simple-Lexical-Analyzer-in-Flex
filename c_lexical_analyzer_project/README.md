# C Lexical Analyzer Using Flex

## Overview
This project implements a **simple lexical analyzer** in C using **Flex**. The program reads an input C source code file (`input.txt`) and classifies the contents into **tokens**, including:

- Keywords
- Identifiers
- Numbers (integer and float)
- Operators
- Unknown symbols

It also provides a **summary** of token counts at the end.

## Features
- Recognizes **C keywords**: `if`, `else`, `while`, `for`, `int`, `float`, `main`
- Identifies **identifiers** (variable names)
- Detects **numbers**, both integer and floating-point
- Recognizes **basic operators**: `=`, `+`, `-`, `*`, `/`, `%`
- Ignores whitespace (spaces, tabs, newlines)
- Handles **unknown symbols** and prints them as `UNKNOWN`
- Displays **total token counts** at the end

## How to Run

1. Make sure **Flex** is installed on your system.
2. Save the program as `lexer.l`.
3. Create an input file `input.txt` containing C code to analyze.
4. Compile and run:

```bash
flex lexer.l
gcc lex.yy.c -o lexer -lfl
./lexer
```

5. The output will display the **tokens** and a **summary** at the end.
