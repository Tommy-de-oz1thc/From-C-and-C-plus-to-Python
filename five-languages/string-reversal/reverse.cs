// reverse.cs - Vend en streng i C#

using System;

class Program {
    static void Main() {
        Console.Write("Indtast en streng: ");
        string input = Console.ReadLine();
        char[] chars = input.ToCharArray();
        Array.Reverse(chars);
        string reversed = new string(chars);
        Console.WriteLine("Omvendt streng: " + reversed);
    }
}
