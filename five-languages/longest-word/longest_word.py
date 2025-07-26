# longest_word.py
# Find det længste ord i en streng (Python)

def find_longest_word(sentence):
    words = sentence.split()
    return max(words, key=len) if words else ""

if __name__ == "__main__":
    user_input = input("Indtast en sætning: ")
    longest = find_longest_word(user_input)
    print("Det længste ord er:", longest)
