#include<stdio.h>
void main() {
    FILE *file1;
    file1 = fopen("input.txt", "r");
    if( file1 == NULL ) {
        printf("File not found !! .. ");
        return;
    }
    FILE *file2;
    file2 = fopen("withoutComment.txt", "a");

    char ch = fgetc(file1);

    while( ch != EOF ) {

        if( ch =='/' ) {
            char ch2 = fgetc(file1);

            if(  ch2 == '/') {
                while( ch != '\n' ){
                    ch = fgetc(file1);
                }
            }
            else if( ch2 == '*' ) {
                while(1) {
                    ch = fgetc(file1);
                    if( ch == EOF ) break;
                    
                    if( ch == '*') {
                        ch2 = fgetc(file1);
                        if( ch2 == '/' ) {
                            ch = fgetc(file1);
                            break;
                        }
                    }
                }

            }
            else{
                fputc(ch, file2); 
                ungetc(ch2, file1);
            }
        }
        else{
            fputc(ch, file2);
        }
        ch = fgetc(file1);
    }

    fclose(file1);
    fclose(file2);

}