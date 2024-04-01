// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Messenger{

    string public poem;
    uint public changeCounter;
    address public owner = msg.sender;

    function setMessageUpdate(string memory _poem) public {

        if (msg.sender == owner) {
            poem = _poem;
            changeCounter++;            
        }

    }



}