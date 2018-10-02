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

CALLOUT: 'callout';
PROGRAM: 'Program';
BREAK: 'break';
CLASS: 'class';
CONTINUE: 'continue';
RETURN: 'return';
VOID: 'void';

IF: 'if';
ELSE: 'else';
FOR: 'for';
INT: 'int';
BOOLEAN: 'boolean';
BOOLEANLITERAL: 'true'|'false';

LCURLY : '{';
RCURLY : '}';
LCOL:'[';
RCOL:']';
LPAR:'(';
RPAR:')';

VIRGULA : ',';
DOISPONTOS: ':';
PVIRGULA : ';';



VEZES:'*';
DIV:'/';
MENOS:'-';
MAIS:'+';
PORCENTO:'%';
EXCLAMA:'!';
E:'&&';
OU:'||';

IGUAL:'==';
DIFERENTE:'!=';
MAIOR:'>';
MENOR:'<';
MAIORIGUAL:'>=';
MENORIGUAL:'<=';
MAISIGUAL:'+=';
MENOSIGUAL:'-=';
ATRIB: '=';

 

WS : [ \t\r\n]+ -> skip;
SL_COMMENT : '//' (~'\n')*'\n' -> skip;

ID : (LETRAS|'_')(LETRAS|NUM|'_')*;
CHAR : '\'' (ESC|LETRAS|NUM|OUTROS) '\'';
STRING : '"'(LETRAS|NUM|SIMBOLOS)* '"';
HEXLITERAL : PREFIXOHEX (HEXLETRAS|NUM)+;
INTLITERAL : NUM+~'x';

fragment ESC : '\\'('n'|'"'|'t'|'\\');
fragment LETRAS : ('a'..'z'|'A'..'Z');
fragment NUM  : ('0'..'9');
fragment SIMBOLOS : (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');
fragment OUTROS: (' '|'!'|'#'|'$'|'%'|'&'|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~');
fragment HEXLETRAS : ('a'..'f'|'A'..'F');
fragment PREFIXOHEX : '0x';
