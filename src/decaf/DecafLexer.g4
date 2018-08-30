lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

LCURLY : '{';
RCURLY : '}';

ID  :
  ('a'..'z' | 'A'..'Z'| '0'..'9')+;

WS_ : (' '|'_'| '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ESC| ALFABETO| IDC| NUMEROS) '\'';
STRING : '"' (ALFABETO|NUMEROS|IDC)* '"';
INTLITERAL : '0x'(NUMEROS|HEXALFA)+;


fragment
ESC :  '\\' ('n'| '"'| 't' | '\\');
fragment
IDC : (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');


    
fragment
NUMEROS : ('0'..'9');
fragment
ALFABETO  : ('a'..'z' | 'A'..'Z');
fragment
HEXALFA  : ('a'..'f' | 'A'..'F');

