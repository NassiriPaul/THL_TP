
int nbrMots = 0;
%%
[a-zA-Z]['-'[a-zA-Z]+|''] nbrMots++;
"end" return 0;
%%
int main(){
    yylex();
    printf("%d mots", nbrMots);
    return 0;
}

yywrap(){
    return 0;
}