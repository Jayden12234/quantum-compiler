// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
namespace Qrng {
    open Microsoft.Quantum.Intrinsic;//core functions
    open Microsoft.Quantum.Canon;//core functions 
    open Microsoft.Quantum.Arrays;//used for array uses and minulation 
    open Microsoft.Quantum.Convert;//needed for ResultAsBool function 

    operation main() : Bool[]{
        return RandBoolArray();//calls the random bool array operation 
    }

    operation RandBool() : Bool {
        use Q = Qubit();//delcares a qubit
        H(Q);//runs the hadamard operation on the qubit
        let res = M(Q);//measures the qubit z axis 
        Reset(Q);//sets the qubit to 0 so it can be released 
        return ResultAsBool(res);//return the measured value as a bool 
    }
    operation RandBoolArray() : Bool[]{
        return [RandBool(),RandBool(),RandBool(),RandBool(),RandBool(),RandBool(),RandBool(),RandBool()];// returns an 8 bit random bool list


    }
}
