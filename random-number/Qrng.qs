// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
namespace Qrng {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Measurement;
    operation main() : Unit {
        let res = RandBit();
        
    }
    operation RandBit() : Int{
        use Q = Qubit();
        H(Q);
        let res = MeasureInteger(Q);
        Reset(Q);
        return res;

    }
    
}
