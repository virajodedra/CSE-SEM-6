%option noyywrap

%{

int c=0,l=0,w=0;

%}


%%
[a-zA-z0-9]* {w++;c+=yyleng;}
. {c++;}
\n {c++;l++;}
%%

void main()
{
	
	yyin = fopen("input.txt", "r");
	yylex();
	printf("No of Characters : %d\nNo of Words : %d\nNo of Lines : %d\n",c,w,l);
}