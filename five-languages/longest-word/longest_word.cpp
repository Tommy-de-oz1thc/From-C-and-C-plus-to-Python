// longest_word.cpp - Find det længste ord i en sætning (C++)

#include <iostream>
#include <sstream>
#include <string>

int main() {
    std::string sentence, word, longest;
    std::cout << "Indtast en sætning: ";
    std::getline(std::cin, sentence);
    std::istringstream iss(sentence);

    while (iss >> word)
        if (word.length() > longest.length())
            longest = word;

    std::cout << "Det længste ord er: " << longest << "\n";
    return 0;
}
