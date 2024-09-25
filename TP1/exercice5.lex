%{
    
%}

%%
\"([^\"]*(\n)?)*\"
[0-9]+[a-zA-Z]+[a-zA-Z0-9]* printf("erreur identificateurs %c\n", yytext[0]);
[0-9]+ printf("Nombre : %s\n", yytext);
begin|end printf("Mots clé : %s\n", yytext);
[+\\-]|(\*{1,2}) printf("opérateurs : %s\n", yytext);
[a-zA-Z]+[a-zA-Z0-9]* printf("identificateur : %s\n", yytext);
[\t\n ] ;
. printf("erreur %c\n", yytext[0]);
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}
