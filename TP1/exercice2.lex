%{
int nbrMots = 0;
int nbrNombre = 0;
%}
%%

end return 0;
[a-zA-Z]+(-[a-zA-Z]+)* nbrMots++;
[0-9]+,?[0-9]* nbrNombre++;
%%
int main(){
    yylex();
    printf("%d mots %d nombres", nbrMots, nbrNombre);
    return 0;
}

int yywrap(){
    return 1;
}

