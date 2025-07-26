# Opgave: Find det længste ord

Denne mappe indeholder løsninger på opgaven **"Find det længste ord i en sætning"** – skrevet i fem forskellige programmeringssprog.

## 🧪 Opgavebeskrivelse

- Brugeren indtaster en sætning.
- Programmet identificerer det længste ord i sætningen.
- Ord adskilles med mellemrum eller ikke-bogstavtegn.

## 🧵 Filer

| Filnavn                 | Sprog     | Beskrivelse                         |
|-------------------------|-----------|-------------------------------------|
| `longest_word.asm`      | NASM      | 64-bit Linux-version med input      |
| `longest_word.c`        | C         | Brug af `isalnum()`, `fgets()` og `strlen()` |
| `longest_word.cpp`      | C++       | Brug af `std::istringstream`       |
| `longest_word.cs`       | C#        | Split og loop                       |
| `longest_word.py`       | Python    | Enkel løsning med `max()` og `split()` |

## 💡 Formål

Denne opgave træner:
- Splitning og analyse af tekst
- Brug af betingelser og sammenligninger
- Grundlæggende stringmanipulation
- Brug af datatyper og kontrolstrukturer

## 🔄 Eksempel

**Input:**
```
Giraffen gik en lille tur i haven
```

**Output:**
```
Det længste ord er: Giraffen
```

## 🛠️ Forslag til udvidelser

- Tæl også længden på det længste ord
- Udskriv alle ord med samme længde som det længste
- Ignorer tal og tegnsætning i vurderingen

## 🏗️ NASM-version (Linux)

- NASM-versionen bruger `syscall` til at læse input og finde det længste ord i en sætning.
- Kræver Linux 64-bit og NASM/ld.

```bash
nasm -f elf64 longest_word.asm -o longest_word.o
ld longest_word.o -o longest_word
./longest_word
```

---

> En del af projektet [From ASM to Python](../../README.md)
