# reverse.py
# Vend en streng i Python

def reverse_string(s):
    return s[::-1]  # Python slicing - nem og elegant

if __name__ == "__main__":
    user_input = input("Indtast en streng: ")
    reversed_text = reverse_string(user_input)
    print("Omvendt streng:", reversed_text)
