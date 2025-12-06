%{
#include <stdio.h>
#include <string.h>

int totalTokens = 0;
int keywordCount = 0;
int identifierCount = 0;
int operatorCount = 0;
int numberCount = 0;
%}

%option noyywrap

%%

[0-9]+\.[0-9]+     { printf("Number: %s\n", yytext); totalTokens++; numberCount++; }
[0-9]+             { printf("Number: %s\n", yytext); totalTokens++; numberCount++; }
if|else|while|for|int|float|main  { printf("Keyword: %s\n", yytext); totalTokens++; keywordCount++; }
[a-zA-Z][a-zA-Z0-9]* { printf("Identifier: %s\n", yytext); totalTokens++; identifierCount++; }
[ \t\n]+           { }
[=+\-*/%]          { printf("Operator: %s\n", yytext); totalTokens++; operatorCount++; }
.                 { printf("UNKNOWN: %s\n", yytext); totalTokens++; }

%%

int main() {
    yyin = fopen("input.txt", "r");
    if (!yyin) { printf("Error opening input.txt\n"); return 1; }
    yylex();

    printf("\n===== TOKEN SUMMARY =====\n");
    printf("Total Tokens     : %d\n", totalTokens);
    printf("Keywords         : %d\n", keywordCount);
    printf("Identifiers      : %d\n", identifierCount);
    printf("Operators        : %d\n", operatorCount);
    printf("Numbers          : %d\n", numberCount);

    return 0;
}