// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract MessageSender {

    address public someAddress;

    address public myAddress;    

    uint public myStorageVariable;

    //Constructor - Called once and always at the very first time this is called during the deployment
    constructor(address _otherAddress) {
        myAddress = _otherAddress;

    }




    function updateSomeAddress() public {
        //Automatically assign whoever that calls the contract to the someAddress variable
        someAddress = msg.sender;
    }

    //View Functions - Can access/call storage variables outside of its own scope but cant create/write them
    function getMyStorageVariable() public view returns(uint){
        return myStorageVariable;
    }

    //Pure Function - Can only call other pure functions and cant call storage variables i.e someaddress
    function getAddition(uint a, uint b) public pure returns (uint){
        return a+ b;
    }

    //Writing function - Only used to create the function : The returns are used for inter-contract communication
    function setMyStoreVar(uint _newVar) public {
        myStorageVariable = _newVar;
        
    }

    


}