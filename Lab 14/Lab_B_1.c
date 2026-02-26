
// Shortest Job First (SJF) Scheduling algorithm
#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, i;
    float total_wt = 0, total_tat = 0;

    printf("Enter number of processes: ");
    scanf("%d", &n);

    int *pid = malloc(n * sizeof(int));
    int *at = malloc(n * sizeof(int));
    int *bt = malloc(n * sizeof(int));
    int *ct = malloc(n * sizeof(int));
    int *wt = malloc(n * sizeof(int));
    int *tat = malloc(n * sizeof(int));
    int *done = calloc(n, sizeof(int));

    for(i = 0; i < n; i++) {
        pid[i] = i + 1;
        printf("Arrival Time of P%d: ", i+1);
        scanf("%d", &at[i]);
        printf("Burst Time of P%d: ", i+1);
        scanf("%d", &bt[i]);
    }

    int completed = 0, time = 0;

    while(completed < n) {
        int min = 9999, index = -1;

        for(i = 0; i < n; i++) {
            if(at[i] <= time && done[i] == 0 && bt[i] < min) {
                min = bt[i];
                index = i;
            }
        }

        if(index == -1) {
            time++;
        } else {
            ct[index] = time + bt[index];
            tat[index] = ct[index] - at[index];
            wt[index] = tat[index] - bt[index];

            total_wt += wt[index];
            total_tat += tat[index];

            time = ct[index];
            done[index] = 1;
            completed++;
        }
    }

    printf("\nSJF Scheduling (Non-Preemptive)\n");
    printf("-------------------------------------------------------------\n");
    printf("PID\tAT\tBT\tCT\tTAT\tWT\n");
    printf("-------------------------------------------------------------\n");

    for(i = 0; i < n; i++) {
        printf("P%d\t%d\t%d\t%d\t%d\t%d\n",
               pid[i], at[i], bt[i], ct[i], tat[i], wt[i]);
    }

    printf("-------------------------------------------------------------\n");
    printf("Average Waiting Time = %.2f\n", total_wt/n);
    printf("Average Turnaround Time = %.2f\n", total_tat/n);

    free(pid); free(at); free(bt); free(ct); free(wt); free(tat); free(done);
    return 0;
}