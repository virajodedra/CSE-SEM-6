
// First-Come, First-Served (FCFS) Scheduling algorithm
#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, i, j;
    float total_wt = 0, total_tat = 0;

    printf("Enter number of processes: ");
    scanf("%d", &n);

    int *pid = malloc(n * sizeof(int));
    int *at = malloc(n * sizeof(int));
    int *bt = malloc(n * sizeof(int));
    int *ct = malloc(n * sizeof(int));
    int *wt = malloc(n * sizeof(int));
    int *tat = malloc(n * sizeof(int));

    for(i = 0; i < n; i++) {
        pid[i] = i + 1;
        printf("Arrival Time of P%d: ", i+1);
        scanf("%d", &at[i]);
        printf("Burst Time of P%d: ", i+1);
        scanf("%d", &bt[i]);
    }

    for(i = 0; i < n-1; i++) {
        for(j = i+1; j < n; j++) {
            if(at[i] > at[j]) {
                int temp;
                temp = at[i]; at[i] = at[j]; at[j] = temp;
                temp = bt[i]; bt[i] = bt[j]; bt[j] = temp;
                temp = pid[i]; pid[i] = pid[j]; pid[j] = temp;
            }
        }
    }

    ct[0] = at[0] + bt[0];

    for(i = 1; i < n; i++) {
        if(ct[i-1] < at[i])
            ct[i] = at[i] + bt[i];
        else
            ct[i] = ct[i-1] + bt[i];
    }

    for(i = 0; i < n; i++) {
        tat[i] = ct[i] - at[i];
        wt[i] = tat[i] - bt[i];
        total_wt += wt[i];
        total_tat += tat[i];
    }

    printf("\nFCFS Scheduling\n");
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

    free(pid); free(at); free(bt); free(ct); free(wt); free(tat);
    return 0;
}