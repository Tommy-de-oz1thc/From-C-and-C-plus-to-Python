/* longest_word.c - Find det længste ord i en sætning */

#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main() {
    char input[256], word[256], longest[256] = "";
    int i = 0, w = 0, max_len = 0;

    printf("Indtast en sætning: ");
    fgets(input, sizeof(input), stdin);

    while (1) {
        if (isalpha(input[i]) || input[i] == '-') {
            word[w++] = input[i];
        } else {
            if (w > 0) {
                word[w] = '\0';
                if (strlen(word) > max_len) {
                    max_len = strlen(word);
                    strcpy(longest, word);
                }
                w = 0;
            }
            if (input[i] == '\0') break;
        }
        i++;
    }

    printf("Det længste ord er: %s\n", longest);
    return 0;
}
