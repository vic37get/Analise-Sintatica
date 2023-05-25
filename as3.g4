grammar as3;

prog:(smnt);

//smnt: ('if'expr'then'smnt | 'if'expr'then'smnt'else'smnt | 'other');
//smnt: ('if'expr'then'smnt 'else'smnt |'if'expr'then'smnt | 'other');
//smnt: ('if'expr'then'smnt ('else'smnt)? | 'other');
smnt: ('if'expr'then' clsmnt 'else'smnt | 'if'expr'then'smnt | 'other');
clsmnt: ('other'| 'if'expr'then' clsmnt 'else'smnt);
expr: EXP;
EXP: 'E'[0-9]+;


WS: [ \t\f\r\n] -> skip;
