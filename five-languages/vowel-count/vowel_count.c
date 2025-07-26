/* vowel_count.c - Tæl antal vokaler i en streng */

#include <stdio.h>
#include <ctype.h>

int is_vowel(char c) {
    c = tolower(c);
    return (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u');
}

int main() {
    char input[100];
    int count = 0;

    printf("Indtast en streng: ");
    fgets(input, sizeof(input), stdin);

    for (int i = 0; input[i] != '\0'; i++) {
        if (is_vowel(input[i])) {
            count++;
        }
    }

    printf("Antal vokaler: %d\n", count);
    return 0;
}
