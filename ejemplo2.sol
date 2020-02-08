pragma solidity ^0.4.24;
contract EjemploOperadores {

    mapping(address => uint) public balances;
    
    function depositar(uint _monto, address _beneficiario) public {
        
           balances[_beneficiario] += _monto;
    }
    
  
}