// palindrome_check.cs - Tjek om en streng er et palindrom (C#)

using System;
using System.Text;

class Program {
    static bool IsPalindrome(string input) {
        StringBuilder sb = new StringBuilder();
        foreach (char c in input)
            if (char.IsLetterOrDigit(c))
                sb.Append(char.ToLower(c));

        string s = sb.ToString();
        for (int i = 0, j = s.Length - 1; i < j; i++, j--)
            if (s[i] != s[j]) return false;

        return true;
    }

    static void Main() {
        Console.Write("Indtast en streng: ");
        string input = Console.ReadLine();
        if (IsPalindrome(input))
            Console.WriteLine("Det er et palindrom!");
        else
            Console.WriteLine("Det er IKKE et palindrom.");
    }
}
