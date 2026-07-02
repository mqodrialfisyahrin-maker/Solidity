// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract balance{
   mapping (address => uint) public balances;

   uint public totalBalance;

   function receiveMoney(uint amount) public {
      balances[msg.sender] += amount;
      totalBalance += amount;
   }

   function transfer(address to,uint amount) public {
      require(balances[msg.sender] >= amount,"your balance is insufficient");

      require(to != address(0),"invalid addresss");


      balances[msg.sender] -= amount;
      balances[to] += amount;
   }

  function checkMyBalance() public view returns (uint) {
   return balances[msg.sender];
  }


}