// longest_word.cs - Find det længste ord i en sætning (C#)

using System;

class Program {
    static void Main() {
        Console.Write("Indtast en sætning: ");
        string input = Console.ReadLine();
        string[] words = input.Split(' ', StringSplitOptions.RemoveEmptyEntries);
        string longest = "";
        foreach (var word in words)
            if (word.Length > longest.Length)
                longest = word;

        Console.WriteLine("Det længste ord er: " + longest);
    }
}
