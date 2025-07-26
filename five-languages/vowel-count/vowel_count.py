# vowel_count.py
# Tæl antal vokaler i en streng (Python)

def count_vowels(s):
    vowels = "aeiouAEIOU"
    return sum(1 for char in s if char in vowels)

if __name__ == "__main__":
    user_input = input("Indtast en streng: ")
    count = count_vowels(user_input)
    print("Antal vokaler:", count)
