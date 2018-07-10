/* solium-disable */

pragma solidity ^0.4.23;

// So, let's take a look for very-very basic step
contract Hello{ //1
    function sayHello(string _name) public view returns (string){ //2
        return _name; //3
    }
}

/*
1. First, we define our class (contract) as "Hello"

2. It's called a function
    function (<parameter types>) {internal|external} [pure|constant|view|payable] [returns (<return types>)]
        *<parameter types + variable>
        *internal | external = Still exploring about this thing. Oh, I think it stand for Public(external) & Private(internal)
        *pure|constant|view|payable
            pure = No readable, no modified
            constant = Readable, but no modified
            view = Readable, but no modified (It same like constant)
            paypable = still exploring about this thing
        *if there any return value, it should declaring data types

3. And finally, our variable returning to string parameter
*/

