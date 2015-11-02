%token TIPO_DE_DADOS OPERADOR SEPARADOR PALAVRA_CHAVE INTEIRO REAL VARIAVEL MAIS MENOS VEZES DIVIDIDO RESTO IGUAL EXCLAMACAO MENOR MAIOR 
%token ABRE_PARENTESE FECHA_PARENTESE PONTOEVIRGULA

%%

comando:
	TIPO_DE_DADOS stmt {printf("Sintaticamente, um comando\n");};
	| expr
	;
stmt:
	VARIAVEL IGUAL INTEIRO PONTOEVIRGULA {printf("Sintaticamente, uma atribuicao\n");}
	;

expr:
	INTEIRO
	| VARIAVEL
	;
%%

#include "stdio.h"

int yyerror(char *s) {
	printf("%s\n", s);
}

int main(void) {
	yyparse();
}
