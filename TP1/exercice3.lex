%{
#include <ctype.h>

int nbrConsonnes = 0;
int nbrVoyelles = 0;
int nbrPonctuations = 0;
%}
voyelle [aeiouYAEIOUY]
alphabet [a-ZA-Z]
%%

{voyelle} nbrVoyelles++;
{alphabet}  nbrConsonnes++;   
[.;?!,] nbrPonctuations++;

%%

int main(){
    yylex();
    printf("%d voyelles %d consonnes %d ponctuations\n", nbrVoyelles, nbrConsonnes, nbrPonctuations);
    return 0;
}

int yywrap(){
    return 1;
}