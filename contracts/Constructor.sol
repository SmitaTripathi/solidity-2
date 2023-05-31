// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//CONTRUCTOR 
//base contract X
contract X{
    string public name;
    
    constructor(string memory _name){
        name = _name;
    }
}

//base contract Y
contract Y{
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

//There are 2 ways to initialize parent contract with parameters
//generally to inherit the parent contract in sub contract 

//1.)pass the parameters here in the inheritance list

contract B is X("Input to X") , Y("Input to Y"){

}

contract C is X,Y{
    //2.)Pass the parameters here in the contructor,
    //similar to function modifiers
    
    constructor(string memory _name,string memory _text) X(_name) Y(_text) {

    }
}
// ORDER is important in terms of the parent contract in sub contract

//Parent constructors are always called in the order of inheritance
//regardless of the order of parent contracts listed in the
//contructor of the child contract

//order of contructors called:
// 1. X
//2. Y
// 3. D

contract D is X,Y{
    constructor() X("X was called") Y("Y was called") {

    }
}

//order of contructors called:
// 1. X
//2. Y
// 3. D
contract E is X,Y{
    constructor() Y("Y was called") X("X was called") {}
}