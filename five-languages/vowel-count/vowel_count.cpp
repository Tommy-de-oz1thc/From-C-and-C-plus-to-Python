// vowel_count.cpp - Tæl antal vokaler i en streng (C++)

#include <iostream>
#include <string>
#include <cctype>

bool is_vowel(char c) {
    c = std::tolower(c);
    return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u';
}

int main() {
    std::string input;
    int count = 0;

    std::cout << "Indtast en streng: ";
    std::getline(std::cin, input);

    for (char c : input) {
        if (is_vowel(c)) count++;
    }

    std::cout << "Antal vokaler: " << count << std::endl;
    return 0;
}
