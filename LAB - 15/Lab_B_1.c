#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, f, i, j, k;
    int hits = 0, faults = 0;

    printf("Enter number of pages: ");
    scanf("%d", &n);

    int *pages = malloc(n * sizeof(int));
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

            int pos = -1, farthest = i;

            for(j = 0; j < f; j++) {
                int next = -1;

                for(k = i+1; k < n; k++) {
                    if(frame[j] == pages[k]) {
                        next = k;
                        break;
                    }
                }

                if(next == -1) {
                    pos = j;
                    break;
                }

                if(next > farthest) {
                    farthest = next;
                    pos = j;
                }
            }

            if(pos == -1)
                pos = 0;

            frame[pos] = pages[i];
            faults++;
        }

        for(j = 0; j < f; j++)
            chart[j][i] = frame[j];
    }

    printf("\nOptimal Page Replacement\n");
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