pragma solidity ^0.5.0;

contract TestDeposit {
   event Deposit(address _from, uint _value);
   
   function deposit() public payable {
      emit Deposit(msg.sender, msg.value);
   }
}