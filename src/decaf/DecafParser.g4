parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program: CLASS PROGRAM LCURLY field_decl* method_decl* RCURLY EOF;

field_decl: type id (VIRGULA type id)* PVIRGULA;

method_decl: (type|VOID) ID LPAR (type ID (VIRGULA type ID)*)? RPAR block;

block: LCURLY var_decl* statement* RCURLY;

var_decl: (type ID)* PVIRGULA;

type: INT|BOOLEAN;

statement: location assign_op expr PVIRGULA
	   | method_call PVIRGULA
	   | IF LPAR expr RPAR block (ELSE block)?
	   | FOR ID ATRIB expr VIRGULA expr block
	   | RETURN expr? PVIRGULA
	   | BREAK PVIRGULA
	   | CONTINUE PVIRGULA
	   | block ;

assign_op: ATRIB | MAISIGUAL | MENOSIGUAL ;

method_call: ID LPAR (expr (VIRGULA expr)*)? RPAR | CALLOUT LPAR string_literal (VIRGULA callout_arg(VIRGULA callout_arg)*)? RPAR;

location: ID | ID LCOL expr RCOL;

expr: location
	|method_call
	|literal
	|expr bin_op expr
	|MENOS expr
	|EXCLAMA expr
	|LPAR expr RPAR;

callout_arg: expr | STRING;

bin_op: arith_op | rel_op | eq_op | cond_op;

arith_op: MAIS | MENOS | VEZES | PORCENTO | DIV;

rel_op : MENOR | MAIOR | MENORIGUAL | MAIORIGUAL;

eq_op: IGUAL|DIFERENTE;

cond_op: E|OU;

literal : int_literal | CHAR | BOOLEANLITERAL;

int_literal : INTLITERAL | HEXLITERAL;

id : ID | ID LCOL? int_literal+ RCOL?;

string_literal: STRING;












