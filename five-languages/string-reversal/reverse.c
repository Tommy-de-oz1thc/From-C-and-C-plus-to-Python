/* reverse.c - Vend en streng i C */

#include <stdio.h>
#include <string.h>

void reverse(char *str) {
    int len = strlen(str);
    for (int i = 0; i < len / 2; i++) {
        char temp = str[i];
        str[i] = str[len - i - 1];
        str[len - i - 1] = temp;
    }
}

int main() {
    char input[100];
    printf("Indtast en streng: ");
    fgets(input, sizeof(input), stdin);

    // Fjern evt. newline
    input[strcspn(input, "\n")] = 0;

    reverse(input);
    printf("Omvendt streng: %s\n", input);
    return 0;
}
