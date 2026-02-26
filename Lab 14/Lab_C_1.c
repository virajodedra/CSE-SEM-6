// Round Robin (RR) Scheduling algorithm
#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, i, time = 0, remain;
    float total_wt = 0, total_tat = 0;

    printf("Enter number of processes: ");
    scanf("%d", &n);

    int *pid = malloc(n * sizeof(int));
    int *at = malloc(n * sizeof(int));
    int *bt = malloc(n * sizeof(int));
    int *rt = malloc(n * sizeof(int));
    int *ct = malloc(n * sizeof(int));
    int *wt = malloc(n * sizeof(int));
    int *tat = malloc(n * sizeof(int));

    for(i = 0; i < n; i++) {
        pid[i] = i + 1;
        printf("Arrival Time of P%d: ", i+1);
        scanf("%d", &at[i]);
        printf("Burst Time of P%d: ", i+1);
        scanf("%d", &bt[i]);
        rt[i] = bt[i];
    }

    int tq;
    printf("Enter Time Quantum: ");
    scanf("%d", &tq);

    remain = n;

    while(remain > 0) {
        int executed = 0;

        for(i = 0; i < n; i++) {
            if(rt[i] > 0 && at[i] <= time) {
                executed = 1;

                if(rt[i] <= tq) {
                    time += rt[i];
                    rt[i] = 0;
                    ct[i] = time;
                    remain--;
                } else {
                    time += tq;
                    rt[i] -= tq;
                }
            }
        }

        if(executed == 0)
            time++;
    }

    for(i = 0; i < n; i++) {
        tat[i] = ct[i] - at[i];
        wt[i] = tat[i] - bt[i];
        total_wt += wt[i];
        total_tat += tat[i];
    }

    printf("\nRound Robin Scheduling\n");
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

    free(pid); free(at); free(bt); free(rt); free(ct); free(wt); free(tat);
    return 0;
}