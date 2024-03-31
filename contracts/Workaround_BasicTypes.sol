// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract BasicTypes{

    bool public myboll;

    //Unsigned256 Int - 0 (2**256)-1

    uint public myUint;

    uint8 public myUint8 = 2**4;

    int public myInt = -10; //-2**128 and +2**128-1

    //todo strings
    string public greeting = "Hello World";

    //Return the bytes representation of the string above and this is the preferred usage instead of the Strings
    bytes public myBytesGreeting = "Hello World";

    function setMyString (string memory _myGreeting) public {
        greeting = _myGreeting;
    }

    //Public view function is a reading function and it must return a value
    function compareStrings(string memory _myGreeting2) public  view returns(bool){
        return keccak256(abi.encodePacked(greeting)) == keccak256(abi.encodePacked(_myGreeting2));

    }

    
    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function incrementInt() public {
        myInt++;
    }

    function decreementUint() public {
        unchecked{
            myUint--;
        }
    }



}
