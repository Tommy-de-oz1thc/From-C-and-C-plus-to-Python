// palindrome_check.cpp - Tjek om en streng er et palindrom (C++)

#include <iostream>
#include <string>
#include <cctype>

bool is_palindrome(const std::string& input) {
    std::string s;
    for (char c : input)
        if (std::isalnum(c)) s += std::tolower(c);

    int i = 0, j = s.length() - 1;
    while (i < j)
        if (s[i++] != s[j--]) return false;

    return true;
}

int main() {
    std::string input;
    std::cout << "Indtast en streng: ";
    std::getline(std::cin, input);

    if (is_palindrome(input))
        std::cout << "Det er et palindrom!\n";
    else
        std::cout << "Det er IKKE et palindrom.\n";
}
