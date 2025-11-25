// appendToTheFile.c

#include <stdio.h>
void main() {
    FILE *file;
    FILE *file2;
    file = fopen("data.txt", "a");
    if(file == NULL) {
        printf("File not found !! .. ");
        return;
    }
    
    char ch;
    // while( fscanf(file, "%c", &ch) == 1);

    char ch2;
    file2 = fopen("second.txt", "r");
    if(file2 == NULL) {
        printf("File not found !! .. ");
        return;
    }
    while( fscanf(file2, "%c", &ch2) == 1 ) {
        // fputc(ch, file);
        fprintf(file, "%c", ch2);
        
    }
    fclose(file);
    
    
    // fprintf(file, );

}