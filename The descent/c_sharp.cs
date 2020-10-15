using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Collections;
using System.Collections.Generic;

class Player
{
    static void Main(string[] args)
        {
            int index;
            int max;

            // game loop
            while (true)
            {
                index = 0;
                max = -1;

                for (int i = 0; i < 8; i++)
                {
                    int mountainH = int.Parse(Console.ReadLine()); // represents the height of one mountain.

                    if (mountainH > max) {
                        max = mountainH;
                        index = i;
                    }
                }

                Console.WriteLine(index); // The index of the mountain to fire on.

            }
        }
}