#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, f, i, j, pointer = 0;
    int hits = 0, faults = 0;

    printf("Enter number of pages: ");
    scanf("%d", &n);

    int *pages = malloc(n * sizeof(int));

    printf("Enter page reference string:\n");
    for(i = 0; i < n; i++)
        scanf("%d", &pages[i]);

    printf("Enter number of frames: ");
    scanf("%d", &f);

    int *frame = malloc(f * sizeof(int));
    int **chart = malloc(f * sizeof(int*));

    for(i = 0; i < f; i++) {
        frame[i] = -1;
        chart[i] = malloc(n * sizeof(int));
    }

    for(i = 0; i < n; i++) {

        int found = 0;

        for(j = 0; j < f; j++) {
            if(frame[j] == pages[i]) {
                found = 1;
                hits++;
                break;
            }
        }

        if(found == 0) {
            frame[pointer] = pages[i];
            pointer = (pointer + 1) % f;
            faults++;
        }

        for(j = 0; j < f; j++)
            chart[j][i] = frame[j];
    }

    printf("\nFIFO Page Replacement\n");
    printf("--------------------------------------------------\n");
    printf("Page\tStatus\n");
    printf("--------------------------------------------------\n");

    for(i = 0; i < n; i++) {
        int flag = 0;
        for(j = 0; j < i; j++)
            if(pages[j] == pages[i])
                flag = 1;
        if(flag)
            printf("%d\tHit\n", pages[i]);
        else
            printf("%d\tFault\n", pages[i]);
    }

    printf("--------------------------------------------------\n");
    printf("Total Hits = %d\n", hits);
    printf("Total Faults = %d\n", faults);
    printf("Hit Ratio = %.2f\n", (float)hits/n);
    printf("Fault Ratio = %.2f\n", (float)faults/n);

    printf("\nGantt Chart (Frame Status)\n\n");

    for(i = 0; i < n; i++)
        printf("%4d", pages[i]);
    printf("\n");

    for(i = 0; i < f; i++) {
        for(j = 0; j < n; j++) {
            if(chart[i][j] != -1)
                printf("%4d", chart[i][j]);
            else
                printf("%4s", "-");
        }
        printf("\n");
    }

    return 0;
}