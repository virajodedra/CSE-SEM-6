// printCapitilize.c

#include <stdio.h>
void main() {
    FILE *file;
    file = fopen("data.txt", "r");
    if (file == NULL) {
        printf("Error: Cannot open file!\n");
        return;
    }

    char ch;
    int flag = 1;
    while( fscanf(file, "%c", &ch) == 1 ) {
        if( ch == ' '  || ch == '\t' || ch == '\n') {
            printf("%c", ch);
            flag = 1;
            continue;
        }
        else if( flag == 1 ) {
            int asc = (int)ch;
            if(asc >= 97 && asc <= 122){
                asc -= 32;
            }

            char temp = (char)asc;

            printf("%c", temp);
            flag = 0;
        }
        else{
            printf("%c", ch);
        }
    }
    fclose(file);
}