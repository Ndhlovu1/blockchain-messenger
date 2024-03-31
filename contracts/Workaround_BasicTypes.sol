// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract BasicTypes{

    bool public myboll;

    //Unsigned256 Int - 0 (2**256)-1

    uint public myUint;

    uint8 public myUint8 = 2**4;

    int public myInt = -10; //-2**128 and +2**128-1

    
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
