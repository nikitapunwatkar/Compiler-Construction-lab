%{
  //Nikita Punwatkar 24070521175
#include <stdio.h>
#include "y.tab.h"
%}

%%

[0-9]+ { yylval = atoi(yytext); return NUMBER; }
[-+*/()] { return yytext[0]; }

[\t\n] ; /* whitespace */
. { printf("Invalid character: %s\n", yytext); }

%%

int yywrap(void) {
return 1;
}
