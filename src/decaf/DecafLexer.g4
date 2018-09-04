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

IF: 'if';
ELSE: 'else';
FOR: 'for';

MAIS:'+';
MENOS:'-';
VEZES:'*';
DIV:'/';

MENORQUE:'<';
MENORIGUAL:'<=';
MAIORQUE:'>';
MAIORIGUAL:'>=';
DIFERENTEDE:'!=';
IGUAL:'==';

DEFINE: '=';

E:'&&';
OU:'||';

LCOL:'[';
RCOL:']';
LPAR:'(';
RPAR:')';

VIRGULA : ',';
DPONTOS: ':';
PVIRGULA : ';';

INT: 'int';
BOOLEAN: 'boolean';
BOOLEANLITERAL: 'true'|'false';

BREAK: 'break';
CALLOUT: 'callout';
CLASS: 'class';
CONTINUE: 'continue';
RETURN: 'return';
VOID: 'void';



WS : (' ' | '\n' | '\t') -> skip;

SL_COMMENT : '//' (~'\n')*'\n' -> skip;

ID : (LETRAS|'_')(LETRAS|NUM|'_')*;
CHAR : '\'' (ESC|LETRAS|NUM|OUTROS) '\'';
STRING : '"'(LETRAS|NUM|SIMBOLOS)* '"';
INTLITERAL : (NUM)+;
HEXLITERAL : '0x'(NUM|HEXLETRAS)+;

fragment ESC : '\\'('n'|'"'|'t'|'\\');
fragment LETRAS : ('a'..'z'|'A'..'Z');
fragment NUM  : ('0'..'9');
fragment SIMBOLOS : (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');
fragment OUTROS: (' '|'!'|'#'|'$'|'%'|'&'|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~');
fragment HEXLETRAS : ('a'..'f'|'A'..'F');
