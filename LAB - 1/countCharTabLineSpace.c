// countCharTabLineSpace.c
#include <stdio.h>
void main() {
    FILE *file;
    
    file = fopen("data.txt", "r");
    if( file == NULL ) {
        printf("File not found !! .. ");
        return;
    }
    int character = 0, tab = 0, space = 0, line = 1;
    //  we can use the fgetc or the getc too here !

    char ch;
    while ( fscanf(file, "%c", &ch) == 1 ) {
        character += 1;
        if( ch == '\t' ) {
            tab += 1;
        }
        else if(ch == ' ' ) {
            space += 1;
        }
        else if( ch == '\n' ) {
            line += 1;
        }
    }
    fclose(file);
    printf( "Character : %d  | Tab : %d | Space : %d | Line : %d  ", character, tab, space, line );

}