// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//this is saved 'StructDeclaration.sol'

struct Todo{
    string text;
    bool completed;
}

// import "./StructDeclaration.sol";

contract Todos{
    //an array of todo structs
    Todo[] public todos;
}
