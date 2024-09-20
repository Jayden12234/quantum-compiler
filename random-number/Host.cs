// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

using System;
using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;
using System.Threading.Tasks;
//importing needed tools
namespace Qrng
{
    class Program
    {
        static async Task Main(string[] args)
        {
            using (var sim = new QuantumSimulator())//starting quantum simulator
            {
                var x = await main.Run(sim);//runs q# program which returns the value 
                //Console.WriteLine(x);//prints the returned value 
                int ans = 0;
                int value = 0;
                for (int i = 0; i < 8; i++)
                {
                    value = Convert.ToInt32(x[i]);
                    //Console.WriteLine(value); prints out binary value of the number line by line 
                    ans += (value * Convert.ToInt32(Math.Pow(2, i)));// converts the binary into denary
                }
                Console.WriteLine("the random number is " +ans);
            }
            
        }
    }
}
