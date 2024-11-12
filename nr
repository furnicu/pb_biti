/* realizati un program in C in care se citeste un vector din strict 4 elemente. elementele sunt considerate corect daca fac parte din intervalul [AA, FF].
Construiti un nr care sa fie format din elem vectorului */

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int v[4], i, j, nr = 0, ok = 0;
    
    printf("Introduceti elementele:\n");
    do
    {
        printf("v[%d]= ", ok);
        scanf("%x", &v[ok]);
        if(v[ok] >= 0xAA && v[ok] <= 0xFF)
            ok++;
    } while (ok != 4);
    
    for(i = 0, j = 3; i < 4; i++, j--)
        nr = nr | (v[i] << 8*j);

    printf("%x", nr);

    return 0;
}
