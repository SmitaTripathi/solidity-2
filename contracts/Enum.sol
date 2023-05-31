// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//ENUM: innumerable

contract Enum{
    //enum representing shipping address
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }

    //defaut value is the first element listed in 
    //definition of the type ,in this case "Pending"
    Status public status;

    //returns uint
    //Pending  -0
    //shipped -1
    //Accepted -2
    //Rejected -3
    //Cancelled -4
    function get() public view returns (Status) {
        return status;
    }

    //update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }
    //you can update to a speciifc enum like this
    function cancel() public {
        status = Status.Cancelled;
    }

    //delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}