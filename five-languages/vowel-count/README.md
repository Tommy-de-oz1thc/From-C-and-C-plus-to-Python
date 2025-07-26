# Opgave: Tæl antal vokaler

Denne mappe indeholder løsninger på opgaven **"Tæl antal vokaler i en tekststreng"** – skrevet i fem forskellige programmeringssprog.

## 🧪 Opgavebeskrivelse

- Brugeren indtaster en tekststreng.
- Programmet tæller antallet af vokaler: `a`, `e`, `i`, `o`, `u` (både store og små bogstaver).
- Resultatet udskrives til skærmen.

## 🧵 Filer

| Filnavn             | Sprog     | Beskrivelse                        |
|---------------------|-----------|------------------------------------|
| `vowel_count.asm`   | NASM      | Lavniveau version, hardkodet streng |
| `vowel_count.c`     | C         | Brug af `tolower()` og `fgets()`  |
| `vowel_count.cpp`   | C++       | `std::string`, `std::tolower()`   |
| `vowel_count.cs`    | C#        | `string.IndexOf()` til vokaltjek  |
| `vowel_count.py`    | Python    | Pythonic løsning med `sum()`      |

## 💡 Formål

Denne opgave træner:
- Betingede tests (`if`, `switch`)
- Løkker og strengmanipulation
- Brug af biblioteker til tekstbehandling
- Forskelle i syntaks og tankegang mellem sprog

## 🔄 Eksempel

**Input:**
```
Hej med dig
```

**Output:**
```
Antal vokaler: 4
```

## 🛠️ Forslag til variationer

- Udvid med æøå som vokaler
- Udskriv *hvilke* vokaler der blev fundet
- Gem antallet i en fil

---

> En del af projektet [From ASM to Python](../../README.md)
