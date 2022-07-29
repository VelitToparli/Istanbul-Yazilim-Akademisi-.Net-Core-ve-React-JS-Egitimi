﻿using System;

namespace OnEgitim
{
    class Program
    {
        static void Main(string[] args)
        {
            // Konsol ekranında mesaj yazdırma
            Console.WriteLine("Hello C#");

            //string (Karakter katarı)
            //adı, soyadı, nicki
            string name = "Velit";
            string surname = "TOPARLI";
            Console.WriteLine(name + " " + surname);

            // int (integar) (Tam Sayı)
            int num1 = 40;
            int num2 = 50;
            int sum = num1 + num2;
            Console.WriteLine("Sum :" + sum);

            // double (Ondalıklı değerler)
            double o1 = 10.5;
            double o2 = 55.9;
            double minus = o2 - o1;
            Console.WriteLine("Minus :" + minus);

            // If ve Koşulları
            int a = 10;
            int b = 20;

            // a > b   --> a, b'den büyük ise 
            // b > a   --> b, a'dan büyük ise
            if (a > b)
            {
                Console.WriteLine("Koşul sağlandı");
            }
            else
            {
                Console.WriteLine("Koşul sağlanmadı");
            }

            // a == b --> a eşit mi b'ye
            if (a == b)
            {
                Console.WriteLine("a eşit b'dir");
            }
            else
            {
                Console.WriteLine("a eşit değil b");
            }


            // Boolean (Karar Türleri) (True-False)
            bool status = false;
            status = a == b; // a == b'ye bakıyor , a b'ye eşit olmadığı için status false değerini alıyor
            status = a > b;
            status = b > a;
            status = a <= b;
            status = a >= b;
            Console.WriteLine(status);

            //array (dizi)
            string[] arr = {"Ali", "Erkan", "Serkan", "Mehmet"};
            //dizilerin eleman sırasına index denilen bir anahtar kelime ile erişim sağlanır. index'ler 0'dan başlar.
            Console.WriteLine(arr[2]);

            // denetim yaptık bi nebze, normalde direk index 5'i çağırsaydım program hata verirdi, fakar bu dentimi yaparak hata olasılığını ortadan kaldırmış olduk
            int index = 5;
            if(arr.Length > index)
            {
              Console.WriteLine(arr[index]);
            }
            
        }
    }
}
