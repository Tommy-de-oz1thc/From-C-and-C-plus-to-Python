/* palindrome_check.c - Tjek om en streng er et palindrom */

#include <stdio.h>
#include <ctype.h>
#include <string.h>

int is_palindrome(const char *str) {
    int i = 0, j = strlen(str) - 1;
    while (i < j) {
        while (i < j && !isalnum(str[i])) i++;
        while (i < j && !isalnum(str[j])) j--;
        if (tolower(str[i]) != tolower(str[j])) return 0;
        i++; j--;
    }
    return 1;
}

int main() {
    char input[200];
    printf("Indtast en streng: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = 0;

    if (is_palindrome(input))
        printf("Det er et palindrom!\n");
    else
        printf("Det er IKKE et palindrom.\n");
    return 0;
}
