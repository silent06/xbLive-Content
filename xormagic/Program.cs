using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace KvHashHandler
{
    class Program
    {
        static int XorMagic(int Key)
        {
            int c = 0x60;
            int s = 0x10;
            int x = 0x101 - 5;
            for (c = 0; c < 2; c++)
            {
                x = (s << 4) | (s >> 3);
                x ^= s;
                s ^= 0x6 >> 1;
                x *= 0x5;
            }
            x ^= Key;
            return x;
        }

        static void Main(string[] args)
        {
            int[] ipaddress = new int[4];
            int i0, i1, i2, i3, Port;
            Console.WriteLine("Enter IP1: ");
            i0 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter IP2:");
            i1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter IP3:");
            i2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter IP4:");
            i3 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Port:");
            Port = Convert.ToInt32(Console.ReadLine());

            ipaddress[0] = XorMagic(i0);
            ipaddress[1] = XorMagic(i1);
            ipaddress[2] = XorMagic(i2);
            ipaddress[3] = XorMagic(i3);
            int i = XorMagic(Port);
            Console.WriteLine("Encrypted IpAddress Value: 0x{0},0x{1},0x{2},0x{3}", ipaddress[0].ToString("X"), ipaddress[1].ToString("X"), ipaddress[2].ToString("X"), ipaddress[3].ToString("X"));
            Console.WriteLine("Encrypted Port Value: 0x{0}", i.ToString("X"));
            Console.WriteLine("Done! Press any key to exit... ");
            Console.ReadKey();
        }
    }
}
