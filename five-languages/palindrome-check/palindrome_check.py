# palindrome_check.py
# Tjek om en streng er et palindrom (Python)

def is_palindrome(s):
    s = ''.join(c.lower() for c in s if c.isalnum())
    return s == s[::-1]

if __name__ == "__main__":
    user_input = input("Indtast en streng: ")
    if is_palindrome(user_input):
        print("Det er et palindrom!")
    else:
        print("Det er IKKE et palindrom.")
