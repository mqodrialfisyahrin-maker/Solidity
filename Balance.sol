// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract balance{
   uint internal  wallet1;
   uint internal  wallet2;
   uint public TotalBalance;

 function total() public view returns (uint) {
    return TotalBalance;
 }
 
 function Receive(uint amount1,uint amount2)public {
    wallet1 += amount1;
    wallet2 += amount2;

    TotalBalance = wallet1 + wallet2;

 }

}