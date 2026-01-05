#include <stdio.h>
#include <ctype.h>
#include <string.h>

char *keywords[] = {
    "int","float","double","char","void",
    "if","else","for","while","do",
    "switch","case","break","continue",
    "return","struct","union","typedef",
    "static","const","unsigned","signed",
    "long","short","sizeof","default"
};

int isKeyword(char word[])
{
    int i;
    for(i = 0; i < 25; i++)
    {
        if(strcmp(word, keywords[i]) == 0)
            return 1;
    }
    return 0;
}

int main(){
    
    FILE *fp;

    fp = fopen("withoutComment.txt", "r");
    if(fp == NULL){
        printf("File not found\n");
        return 0;
    }

    char ch;
    // char word[50];
    char word[100];
    int i;
    int keywordCount = 0;
    int identifierCount = 0;

    
    while((ch = fgetc(fp)) != EOF){
        if(isalpha(ch) || ch == '_'){
            i = 0;
            word[i++] = ch;

            ch = fgetc(fp);
            while(isalnum(ch) || ch == '_'){
                word[i++] = ch;
                ch = fgetc(fp);
            }

            word[i] = '\0';

            if(isKeyword(word))
                keywordCount++;
            else
                identifierCount++;
        }
    }

    fclose(fp);

    printf("Keywords    : %d\n", keywordCount);
    printf("Identifiers : %d\n", identifierCount);

    return 0;
}



// // countKeywordAndIdentifiers.c
// #include <stdio.h>
// #include <ctype.h>
// #include <string.h>

// char *keywords[] = {
//     "int","float","double","char","void",
//     "if","else","for","while","do",
//     "switch","case","break","continue",
//     "return","struct","union","typedef",
//     "static","const","unsigned","signed",
//     "long","short","sizeof","default"
// };

// int keywordCount = 25;

// int isKeyword(char word[]) {
//     for(int i = 0; i < keywordCount; i++) {
//         if(strcmp(word, keywords[i]) == 0)
//             return 1;
//     }
//     return 0;
// }

// int main() {
//     FILE *fp = fopen("withoutComment.txt", "r");
//     if(fp == NULL) {
//         printf("File not found\n");
//         return 0;
//     }

//     char ch, word[50];
//     int i = 0;
//     int keyCount = 0, idCount = 0;

//     while((ch = fgetc(fp)) != EOF) {

//         if(isalpha(ch) || ch == '_') {
//             i = 0;
//             word[i++] = ch;

//             while(isalnum(ch = fgetc(fp)) || ch == '_') {
//                 word[i++] = ch;
//             }

//             word[i] = '\0';

//             if(isKeyword(word))
//                 keyCount++;
//             else
//                 idCount++;
//         }
//     }

//     fclose(fp);

//     printf("Keywords     : %d\n", keyCount);
//     printf("Identifiers  : %d\n", idCount);

//     return 0;
// }
