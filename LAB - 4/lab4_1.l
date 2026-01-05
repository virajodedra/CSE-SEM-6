%option noyywrap

%{
int c=0,v=0;
%}

%%

[aeiourAEIOU] v++;
[a-zA-Z] c++;
\n {printf("No of VOWELS : %d\nNo of CONSONENTS : %d\n",v,c);v=0;c=0;}
.
%%


void main()
{
	yylex();

}
