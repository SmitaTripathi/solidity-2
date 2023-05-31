// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//FUNCTION MODIFIER'
//IMPORATNT NOTES
//--modifier are code that can be run before and after the function call
//--Generally use for 3 **Reasons:
//--Restriction access,Validate inputs,Guard against reentrancy hack

//*************solidity program to  modify the account that can only be performed by the owner itself else erroer is displayed**************************
contract FunctionModifier{
    
    address public owner;
    uint256 public x =10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender ==owner,"Not owner");
        _;
    }

    modifier ValidateData(address _addr){
        require(_addr !=address(0),"Not Valid Address");
        _;
    }


    function changeOwner(address _newOwner)public onlyOwner ValidateData(_newOwner){
        owner = _newOwner;
    }

    //**What is a reentrancy attack?
//******In a reentrancy attack, an attacker calls a function that interacts with another contract 
//*******and then immediately calls the same function again before the first function call completes.

//**by the help of modifier it can be saved gauarded
//** VIP **

    modifier noReentrancy(){
        require(!locked,"No reentrancy");
        locked = true;
        _;
        locked = false;
    }


    function decrement(uint256 i) public noReentrancy{
        x -= 1;

        if(i>1){
            decrement(i-1);
        }
    }
}
