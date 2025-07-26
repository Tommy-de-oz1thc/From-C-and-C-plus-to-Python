# Opgave: Palindrom-tjek

Denne mappe indeholder løsninger på opgaven **"Tjek om en streng er et palindrom"** – skrevet i fem forskellige programmeringssprog.

## 🧪 Opgavebeskrivelse

- Brugeren indtaster en tekststreng.
- Programmet tjekker, om strengen er et palindrom.
- Der ignoreres store/små bogstaver og tegnsætning.

## 🧵 Filer

| Filnavn                  | Sprog     | Beskrivelse                          |
|--------------------------|-----------|--------------------------------------|
| `palindrome_check.asm`   | NASM      | Simpel hardkodet strengtjek          |
| `palindrome_check.c`     | C         | Brug af `tolower()` og pointere      |
| `palindrome_check.cpp`   | C++       | Brug af `std::string` og STL-funktioner |
| `palindrome_check.cs`    | C#        | `StringBuilder` og loop-baseret tjek |
| `palindrome_check.py`    | Python    | Elegant løsning med slicing og comprehension |

## 💡 Formål

Denne opgave træner:
- Tænkning i algoritmer og stringmanipulation
- Fjernelse af ikke-bogstaver fra tekst
- Brug af loop og betingede tests
- Håndtering af input fra bruger

## 🔄 Eksempel

**Input:**
```
A man a plan a canal Panama
```

**Output:**
```
Det er et palindrom!
```

## 🛠️ Forslag til variationer

- Gør programmet case-sensitivt
- Undlad at ignorere tegnsætning
- Tæl antallet af karakterer, der skal ændres for at opnå et palindrom

---

> En del af projektet [From ASM to Python](../../README.md)
