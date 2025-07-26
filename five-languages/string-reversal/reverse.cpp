// reverse.cpp - Vend en streng i C++

#include <iostream>
#include <string>
#include <algorithm>

int main() {
    std::string input;
    std::cout << "Indtast en streng: ";
    std::getline(std::cin, input);

    std::reverse(input.begin(), input.end());
    std::cout << "Omvendt streng: " << input << std::endl;
    return 0;
}
