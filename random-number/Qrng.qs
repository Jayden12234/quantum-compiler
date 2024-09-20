// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
namespace Qrng {
    open Microsoft.Quantum.Intrinsic;//core functions
    open Microsoft.Quantum.Canon;//core functions 
    open Microsoft.Quantum.Arrays;//used for array uses and minulation 
    operation main() : Int[] {
        use q = Qubit();//define a qubit
        H(q);//applies hammand operstion to qubit
        let res: Int[] = [];// define an array of ints 
        let res = res + [4];// add to array of ints
        Reset(q);// reset qubit to 0 so it can be released 
        return res;//return the int array so it can be usd in the c# program
    }
    
}
