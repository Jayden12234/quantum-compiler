// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
namespace Qrng {
    open Microsoft.Quantum.Intrinsic;//core functions
    open Microsoft.Quantum.Canon;//core functions 
    open Microsoft.Quantum.Arrays;//used for array uses and minulation 
    open Microsoft.Quantum.Convert;//needed for ResultAsBool function 

    
    operation main() : Bool {
        let res : Bool =RandBool();// define an array of bools 
        //let res = res + [RandBool()];// add a random boolan value to array of bools
        return res;//return the bools array so it can be usd in the c# program
    }
    operation RandBool() : Bool {
        use q = Qubit();//define a qubit
        H(q);//applies hammand operstion to qubit
        let res = M(q);//Measures the Qubit forcing it to pick a state of 1 or 0
        Reset(q);// reset qubit to 0 so it can be released 
        return ResultAsBool(res);//return the bool so it can be use in the q# program
    }
}
