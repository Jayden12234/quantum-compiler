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
                bool x = await main.Run(sim);//runs q# program which returns the value 
                Console.WriteLine(x);//prints the returned value 
            }
            
        }
    }
}
