#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int main()
{
    int index;
    int max;
    int mountain_h;

    while (1) {
        index = 0;
        max = -1;
        
        for (int i = 0; i < 8; i++) {
            scanf("%d", &mountain_h);  // represents the height of one mountain.
            
            if (mountain_h > max) {
                max = mountain_h;
                index = i;
            }
        }

        // Write an action using printf(). DON'T FORGET THE TRAILING \n
        // To debug: fprintf(stderr, "Debug messages...\n");

        printf("%d\n", index); // The index of the mountain to fire on.
    }

    return 0;
}