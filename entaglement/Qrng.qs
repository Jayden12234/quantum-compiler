// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
namespace Qrng {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

       operation SetQubitState(desired : Result, target : Qubit) : Unit {//set the state of the qubit
           if desired != M(target) {
               X(target);
           }
       }

    operation main() : (Int, Int, Int, Int) {
        mutable numOnesQ1 = 0;
        mutable numOnesQ2 = 0;
        let count = 1000;
        let initial = Zero;

        // allocate the qubits
        use (q1, q2) = (Qubit(), Qubit());   
        for test in 1..count {
            SetQubitState(initial, q1);
            SetQubitState(Zero, q2);
        
            H(q1);            
            CNOT(q1, q2);// Add the CNOT operation after the H operation
            // measure each qubit
            let resultQ1 = M(q1);            
            let resultQ2 = M(q2);           
    
            // Count the number of 'Ones' returned:
            if resultQ1 == One {
                set numOnesQ1 += 1;
            }
            if resultQ2 == One {
                set numOnesQ2 += 1;
            }
        }
    
        // reset the qubits
        SetQubitState(Zero, q1);             
        SetQubitState(Zero, q2);
        
    
        // Display the times that |0> is returned, and times that |1> is returned
        Message($"Q1 - Zeros: {count - numOnesQ1}");
        Message($"Q1 - Ones: {numOnesQ1}");
        Message($"Q2 - Zeros: {count - numOnesQ2}");
        Message($"Q2 - Ones: {numOnesQ2}");
        return (count - numOnesQ1, numOnesQ1, count - numOnesQ2, numOnesQ2 );

    }
}
