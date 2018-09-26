parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program :  CLASS PROGRAM LCURLY field_decl* method_decl* RCURLY;
field_decl :  listavirgula (VIRGULA listavirgula)+ PVIRGULA;
method_decl :  type | VOID LPAR LCOL listinha (VIRGULA listinha)+ RCOL RPAR block;
listavirgula : type id | type id LCOL int_literal RCOL;
listinha : type id;
block : LCURLY var_decli* statement* RCURLY;
var_decli : type id+VIRGULA PVIRGULA;
type : INT | BOOLEAN;
statement : location assign_op expr PVIRGULA
	| method_call PVIRGULA
	| IF LPAR expr RPAR block [ ELSE block ]
	| FOR id = expr VIRGULA expr block
	| RETURN [ expr ] PVIRGULA
	| BREAK PVIRGULA
	| CONTINUE PVIRGULA
	| block; 





