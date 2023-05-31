// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//MAPPING: mapping allows us to track data in smart contract
//SYNTAX:
      // mapping(keyType => valueType)


//**Generally in this we have added a person address and get it the value while also removed the person**
//**in first contract we have the single user**


contract Mapping{
    //mapping from address to uint
    mapping(address => uint) public myMap;
    function get(address _addr) public view returns(uint) {
        //mapping always returns a value
        //if the value was never set,it will return the dafault value.
        return myMap[_addr];
    } 

    function set(address _addr,uint _i) public {
        //update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        //reset the value to the default value
        delete myMap[_addr];
    }
}


//**While in second contract we have the multiple user
//to check whose id address is correct and whose is wrong 


contract NestedMapping {
    //nested mapping (mapping from address to another mapping)
    mapping(address => mapping (uint => bool)) public nested;

    function get(address _addr1,uint _i) public view returns(bool) {
        //you can get values from a nested mapping
        //even when it is not intialized
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    )public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1,uint _i) public {
        delete nested[_addr1][_i];
    }
}
