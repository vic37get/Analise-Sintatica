grammar as;

prog:(e);

e: ('-'e | '('e')' | 'id' | '-'e e1 | '('e e1')' | 'id'e1);
e1: ('+'e e1 | '*'e e1 | '+'e | '*'e);


WS: [ \t\f\r\n] -> skip;
