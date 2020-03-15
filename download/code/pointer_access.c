/// Compile with: 
///               gcc -Wall -g -o pointer_access pointer_access.c  
#include <stdio.h>

int main() 
{
    int array[10];
    int *p;
    int var;

    for(int i = 0; i < 10; i++) array[i]=i;

    var = array[4];
    printf("%i\n", var);

    var = 5[array];
    printf("%i\n", var);

    var = *(array + 6);
    printf("%i\n", var);

    p = &array[7];
    var = *p;
    printf("%i\n", var);

    p = array;
    var = *p;
    printf("%i\n", var);

    p = &var;
    *p = *(array + 3);
    printf("%i\n", var);
}