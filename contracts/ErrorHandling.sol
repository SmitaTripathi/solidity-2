// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//SOLIDITY ERROR HANDLING

//--------------------REAQUIRE STATEMENT-------------------

// contract  Reaquire{
// //     function checkInput(uint256 _input)public view returns(string memory){
// //         require(_input >=0 , "invalid uint8");
// //         require(_input <=255, "invalid uin8");

// //         return "Input is uint8";
// //     }

//     function  odd(uint256 _input)public view returns(bool){
//         require(_input %2!=0);
//         return true;
//     }
// }

//--------------------SOLIDITY ASSERT-------------------------- 

// contract AssertStatement{
//     bool  result;
//     function checkOverFlow(uint256 _num1,uint256 _num2)public{
//         uint256 sum = _num1 +_num2;
//         assert(sum<=255);
//         result = true;
//     }

//     function getResult() public view returns(string memory){
//         if(result==true){
//             return "No overflow";
//         }
//         else{
//             return "Overflow exist";
//         }
//     }
// }

//-------------------SOLIDITY REVERT -------------------------
//**least used keyword ,** we dont look for condition we pass error message

// contract RevertStatement{

//     function checkOverFlow(uint256 _num1,uint256 _num2) public view returns(string memory){
//         uint256 sum = _num1 + _num2;

//         if(sum < 0 || sum >255){
//             revert("Overflow exist");
//         }
//         else{
//            return ("No overflow");
//         }
//     }
// }


//**********reaquire keyword mostly used as it through the output statement also check the condition