// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Array{
    //severl ways to intialize an array
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    // fixed sized array,all elements intialize to 0
    uint[10] public myFixedSieArr;

    function get(uint i) public  view returns(uint){
        //returning the array
        return arr[i];
    }
    //solidity can return the entire array
    //But this function should be avoided for 
    //arrays that cn grow indefinitely in length.

    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function push(uint i) public {
        //Append to array
        //this will increase the length by 1
        arr.push(i);
    }

    function pop() public{
        //remove last elemnt fro array
        //this will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns(uint) {
        return arr.length;
    }

    function remove(uint index) public {
        //delete does not change the arry length
        //it resets the value at index to it's default value,
        //in this case 0
        delete arr[index];

    }

    function examples() external {
        //create array in memory, only fixed size can be created
        uint[] memory a =new uint[](5);
    }
}
//**NOTE: don't go for infinite array as there is a ges fee associated with each transcation that can lead 
//to more consumption of fees while the transcation
//**ensure to use finite array that is having fixed size
