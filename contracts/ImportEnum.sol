// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//This is saved 'EnumDeclaration.sol'

enum Status{
     Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
}

//just a way ti o=imort enum file in solidity
// import "./EnumDeclaration.sol";

contract Enum {
        Status public status;
}