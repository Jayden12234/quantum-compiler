// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
namespace Qrng {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    operation main() : Unit {
        for i in 0..8{
            Message(i);
            RandBit_AsInt();
        }
    }
    operation RandBit_AsInt() : Int{
        use Q = Qubit();
        H(Q); 
        let res = M(Q);
        if res == Zero{
            return 0;
        } elif  res == One{
            return 1;
        }
        return 0;
        Reset(Q);
    }
    
}
