// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract ArrayReplaceFromEnd {
    uint[] public arr;

    //deleting an element creates a gap in the array
    //one trick to keep the array compact is to
    //move the last element into the place to delete
    function remove(uint index) public {
        //move the last element into the place to delete
        arr[index]= arr[arr.length-1];
        //remove the last element
        arr.pop();
    }
    //assert is used to confirm the data or the value
    function test() public {
        arr=[1,2,3,4,5];
        remove(1);
        //[1,5,3,4]
        assert(arr.length==4);
        assert(arr[0]==1);
        assert(arr[1]==5);
        assert(arr[2]==3);
        assert(arr[3]==4);

        remove(2);
        //[1,5,4]
        assert(arr.length==3);
        assert(arr[0]==1);
        assert(arr[1]==5);
        assert(arr[2]==4);

        remove(2);
        //[1,5]
        assert(arr.length==2);
        assert(arr[0]==1);
        assert(arr[1]==5);
    }
}