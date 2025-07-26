// vowel_count.cs - Tæl antal vokaler i en streng (C#)

using System;

class Program {
    static bool IsVowel(char c) {
        return "aeiouAEIOU".IndexOf(c) >= 0;
    }

    static void Main() {
        Console.Write("Indtast en streng: ");
        string input = Console.ReadLine();
        int count = 0;

        foreach (char c in input) {
            if (IsVowel(c)) count++;
        }

        Console.WriteLine("Antal vokaler: " + count);
    }
}
