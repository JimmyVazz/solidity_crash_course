pragma solidity ^0.4.24;

contract transferC {

    
    function getBalance(address _direccion) public view returns (uint256) {
        return (_direccion.balance) / 100000000;
    }

}